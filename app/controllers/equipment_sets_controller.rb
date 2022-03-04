class EquipmentSetsController < ApplicationController
  before_action :authenticate_user

  def index
    render json: current_user.equipment_sets
  end

  def create
    #Create actual equipment set
    set = EquipmentSet.new(
      name: params[:name],
      user_id: current_user.id,
      oldschooljs_monster_id: params[:oldschooljs_monster_id]
    )
    if set.save
      #Create individual items to attach to equipment set
      items = params[:items]
      items.each do |item|
        p item[:oldschooljs_item_id]
        EquipmentSetItem.create(
          oldschooljs_item_id: item[:oldschooljs_item_id],
          slot: item[:slot],
          equipment_set_id: set.id
        )
      end
      render json: set
    else
      render json: {errors: set.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def show
    render json: EquipmentSet.find(params[:id])
  end

  def update
    #Updates set values
    set = EquipmentSet.find(params[:equipment_set_id])
    set.name = params[:name] || set.name
    set.oldschooljs_monster_id = params[:oldschooljs_monster_id] || set.oldschooljs_monster_id
    
    if set.save
    #Deletes old items and adds new items
      EquipmentSetItem.where(equipment_set_id: set.id).destroy_all
      items = params[:items]
      items.each do |item|
        EquipmentSetItem.create(
          oldschooljs_item_id: item[:oldschooljs_item_id],
          slot: item[:slot],
          equipment_set_id: set.id
        )
      end
      render json: set
    else
      render json: {errors: set.errors.full_messages}, status: :unprocessable_entity

    end

  end

  def destroy
    set_id = params[:id]
    EquipmentSetItem.where(equipment_set_id: set_id).destroy_all
    EquipmentSet.find(set_id).destroy

    render json: {message: "The equipment set has been destroyed."}
  end

end
