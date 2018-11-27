# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


PropertyBetweenFloorSlap.delete_all
PropertyCloset.delete_all
PropertyCover.delete_all
PropertyDoor.delete_all
PropertyDrinkingWater.delete_all
PropertyDryWall.delete_all
PropertyElectricity.delete_all
PropertyEnlarQuality.delete_all
PropertyExteriorClosure.delete_all
PropertyExternTermination.delete_all
PropertyFurniture.delete_all
PropertyGa.delete_all
PropertyHeating.delete_all
PropertyHousingQuality.delete_all
PropertyInteriorClosure.delete_all
PropertyLandShape.delete_all
PropertyMaintenance.delete_all
PropertyPavement.delete_all
PropertyPropertyType.delete_all
PropertyRoad.delete_all
PropertyRol.delete_all
PropertyRoofing.delete_all
PropertySecCharacteristic.delete_all
PropertySector.delete_all
PropertySewerage.delete_all
PropertyShed.delete_all
PropertySidewalk.delete_all
PropertyStair.delete_all
PropertyStreetLocation.delete_all
PropertyStructure.delete_all
PropertyToiletArtifact.delete_all
PropertyWaterRainDuct.delete_all
PropertyWindow.delete_all
ServiceYard.delete_all
Property.delete_all
Assessment.delete_all
BetweenFloorSlap.delete_all
Client.delete_all
ClientType.delete_all
Province.delete_all
City.delete_all
Region.delete_all
Closet.delete_all
Cover.delete_all
DoorFrame.delete_all
Door.delete_all
DrinkingWater.delete_all
DryWall.delete_all
Electricity.delete_all
EnlargementsQuality.delete_all
ExteriorClosure.delete_all
ExternalTermination.delete_all
FurnitureCover.delete_all
Furniture.delete_all
Ga.delete_all
Heating.delete_all
HousingQuality.delete_all
InteriorClosure.delete_all
LandShape.delete_all
Maintenance.delete_all
Owner.delete_all
Pavement.delete_all
Pool.delete_all
PropertyType.delete_all
Quality.delete_all
Road.delete_all
Roofing.delete_all
SectorCharacteristic.delete_all
Sector.delete_all
Sewerage.delete_all
ShedMaterial.delete_all
Shed.delete_all
SideWalk.delete_all
Stair.delete_all
State.delete_all
StreetLocation.delete_all
Structure.delete_all
ToiletArtifact.delete_all
WaterRainDuct.delete_all
Window.delete_all

BetweenFloorSlap.create(name: 'Hormigon', value: 1)
BetweenFloorSlap.create(name: 'Madera', value: 2)
BetweenFloorSlap.create(name: 'Metalica', value: 3)
BetweenFloorSlap.create(name: 'Colaborante', value: 4)
BetweenFloorSlap.create(name: 'Otro', value: 5)

ClientType.create(name: 'Banco')
ClientType.create(name: 'Particular')



5.times do
    name = Faker::Name.name
    clientType = ClientType.find_by(name: 'Particular')
    Client.create(name: name, contact: name, number: 111111, available: 1, client_type_id: clientType.id)
end

5.times do 
    clientType = ClientType.find_by(name: 'Banco')
    name = Faker::Bank.name
    phone = Faker::PhoneNumber.phone_number
    Client.create(name: name,contact: name, number: phone, available: 1, client_type_id: clientType.id)
end

Cover.create(name: 'Asbesto Cemento', value: 1)
Cover.create(name: 'Teja Arcilla', value: 2)
Cover.create(name: 'Chilena', value: 3)
Cover.create(name: 'Prefabricada', value: 4)
Cover.create(name: 'Fierro Galvanizado', value: 4)
Cover.create(name: 'Marsellesa', value: 4)
Cover.create(name: 'Mortero', value: 4)
Cover.create(name: 'Tipo Gerard', value: 4)
Cover.create(name: 'Asfaltica', value: 4)
Cover.create(name: 'Hormigon', value: 4)


DoorFrame.create(name: 'Metalico', value: 1)
DoorFrame.create(name: 'Madera', value: 2)
DoorFrame.create(name: 'Aluminio', value: 3)

Door.create(name: 'Placas', value: 1)
Door.create(name: 'Aluminio', value: 2)
Door.create(name: 'Atablerada', value: 3)
Door.create(name: 'Metalica', value: 4)
Door.create(name: 'Con Palillaje', value: 5)
Door.create(name: 'Enchapada', value: 6)

DrinkingWater.create(name: 'Si', value: 1)
DrinkingWater.create(name: 'No', value: 2)
DrinkingWater.create(name: 'Noria', value: 3)

DryWall.create(name: 'Albañileria', value: 1)
DryWall.create(name: 'Madera', value: 2)
DryWall.create(name: 'Vulcometal', value: 3)
DryWall.create(name: 'Madera/yeso', value: 4)
DryWall.create(name: 'Otro', value: 5)

Electricity.create(name: 'Si', value: 1)
Electricity.create(name: 'No', value: 2)
Electricity.create(name: 'Aerea', value: 3)
Electricity.create(name: 'SubTerranea', value: 4)

EnlargementsQuality.create(name: 'Superior', value: 1)
EnlargementsQuality.create(name: 'Similar', value: 2)
EnlargementsQuality.create(name: 'Inferior', value: 3)

ExteriorClosure.create(name: 'Reja metalica', value: 1)
ExteriorClosure.create(name: 'Albañileria', value: 2)
ExteriorClosure.create(name: 'Reja y albañileria', value: 3)
ExteriorClosure.create(name: 'Biscocho', value: 4)
ExteriorClosure.create(name: 'Cerco vivo', value: 5)
ExteriorClosure.create(name: 'PVC', value: 6)
ExteriorClosure.create(name: 'Pandereta', value: 7)
ExteriorClosure.create(name: 'Soga', value: 8)
ExteriorClosure.create(name: 'Otro', value: 9)

InteriorClosure.create(name: 'Reja metalica', value: 1)
InteriorClosure.create(name: 'Albañileria', value: 2)
InteriorClosure.create(name: 'Reja y albañileria', value: 3)
InteriorClosure.create(name: 'Biscocho', value: 4)
InteriorClosure.create(name: 'Cerco vivo', value: 5)
InteriorClosure.create(name: 'PVC', value: 6)
InteriorClosure.create(name: 'Pandereta', value: 7)
InteriorClosure.create(name: 'Soga', value: 8)
InteriorClosure.create(name: 'Otro', value: 9)

ExternalTermination.create(name: 'Estuco', value: 1)
ExternalTermination.create(name: 'Liso', value: 2)
ExternalTermination.create(name: 'Rugoso', value: 3)
ExternalTermination.create(name: 'Pintura', value: 4)
ExternalTermination.create(name: 'Martelina', value: 5)
ExternalTermination.create(name: 'A la vista', value: 6)
ExternalTermination.create(name: 'Siding', value: 7)


FurnitureCover.create(name: 'Granito', value: 1)
FurnitureCover.create(name: 'Silestone', value: 2)
FurnitureCover.create(name: 'postFormado', value: 3)
FurnitureCover.create(name: 'Otro', value: 4)

Furniture.create(name: 'Base', value: 1)
Furniture.create(name: 'Colgar', value: 2)
Furniture.create(name: 'Lavaplatos', value: 3)
Furniture.create(name: 'Cocina/horno', value: 4)
Furniture.create(name: 'Horno', value: 5)
Furniture.create(name: 'Campana', value: 6)
Furniture.create(name: 'Calefont', value: 7)
Furniture.create(name: 'Encimera', value: 8)
Furniture.create(name: 'Isla', value: 9)

Ga.create(name: 'Balon',value: 1)
Ga.create(name: 'Red',value: 2)
Ga.create(name: 'Bombonera',value: 3)

Heating.create(name: 'Bosca',value: 1)
Heating.create(name: 'Losa radiante',value: 2)
Heating.create(name: 'Paneles',value: 3)
Heating.create(name: 'Estufa murales',value: 4)
Heating.create(name: 'Chimenea',value: 5)

HousingQuality.create(name: 'Superior', value: 1)
HousingQuality.create(name: 'Buena', value: 2)
HousingQuality.create(name: 'Corriente', value: 3)
HousingQuality.create(name: 'Regular', value: 4)
HousingQuality.create(name: 'Mala', value: 5)

LandShape.create(name: 'Regular', value: 1)
LandShape.create(name: 'Irregular', value: 2)
LandShape.create(name: 'Pendiente', value: 3)
LandShape.create(name: 'Relleno', value: 4)

Maintenance.create(name: 'Buena', value: 1)
Maintenance.create(name: 'Normal', value: 2)
Maintenance.create(name: 'Regular', value: 3)
Maintenance.create(name: 'Deficiente', value: 4)

5.times do |i|
    name = Faker::Name.name
    num = 7000000 +i
    dv = (0...9).sort_by{rand}[1]
    rut = num.to_s + '-' + dv.to_s
    Owner.create(name: name, rut: rut)
end

Pavement.create(name: 'Pavimento', value: 1)
Pavement.create(name: 'Ceramico', value: 2)
Pavement.create(name: 'Fulget', value: 3)
Pavement.create(name: 'Pelequen', value: 4)
Pavement.create(name: 'Otro', value: 5)

Closet.create(name: 'Repisas', value: 1)
Closet.create(name: 'Cajones', value: 2)
Closet.create(name: 'Aglomerada', value: 3)
Closet.create(name: 'Madera Color', value: 4)

PropertyType.create(name: 'Vivienda')
PropertyType.create(name: 'Obra')
PropertyType.create(name: 'Maquinaria')

Quality.create(name: 'Superior', value: 1)
Quality.create(name: 'Buena', value: 2)
Quality.create(name: 'Corriente', value: 3)
Quality.create(name: 'Regular', value: 4)
Quality.create(name: 'Inferior', value: 5)

Region.create(name: 'I Región de Tarapacá')
Region.create(name: 'II Región de Antofagasta')
Region.create(name: 'III Región de Atacama')
Region.create(name: 'IV Región de Coquimbo')
Region.create(name: 'V Región de Valparaiso')
Region.create(name: 'VI Región del Libertador General Bernardo OHiggins')
Region.create(name: 'VII Región del Maule')
Region.create(name: 'VIII Región del Bio-Bio')
Region.create(name: 'IX Región de La Araucania')
Region.create(name: 'X Región de Los Lagos')
Region.create(name: 'XI Región de Aysén del General Carlos Ibañez del Campo')
Region.create(name: 'XII Región de Magallanes y Antártica Chilena')
Region.create(name: 'XIII Región Metropolitana de Santiago')
Region.create(name: 'XIV Región de Los Rios')
Region.create(name: 'XV Región de Arica y Parinacota')
Region.create(name: 'XVI Región de Ñuble')

Road.create(name: 'Hormigon', value: 1)
Road.create(name: 'Asfalto', value: 2)
Road.create(name: 'Adoquin', value: 3)
Road.create(name: 'Tierra', value: 4)

Roofing.create(name: 'Cerchas madera', value: 1)
Roofing.create(name: 'Metalica', value: 2)
Roofing.create(name: 'Viga a la vista', value: 3)
Roofing.create(name: 'Otro', value: 4)

SectorCharacteristic.create(name: 'Residencial', value: 1)
SectorCharacteristic.create(name: 'Comercial', value: 2)
SectorCharacteristic.create(name: 'Mixto', value: 3)
SectorCharacteristic.create(name: 'Agricola', value: 4)
SectorCharacteristic.create(name: 'Servicio', value: 5)
SectorCharacteristic.create(name: 'Industrial', value: 6)

Sewerage.create(name: 'Si', value: 1)
Sewerage.create(name: 'No', value: 2)
Sewerage.create(name: 'Si, Parte', value: 3)

ShedMaterial.create(name: 'Madera', value: 1)
ShedMaterial.create(name: 'Metal', value: 2)

Shed.create(name: 'Estructura')
Shed.create(name: 'Cercha')

SideWalk.create(name: 'Pastelon', value: 1)
SideWalk.create(name: 'Baldosa', value: 2)
SideWalk.create(name: 'Tierra', value: 3)
SideWalk.create(name: 'Pasaje', value: 4)

Stair.create(name: 'Madera', value: 1)
Stair.create(name: 'Metal', value: 2)
Stair.create(name: 'Hormigon', value: 3)

State.create(name: 'Nueva')
State.create(name: 'Lista para ruta')
State.create(name: 'En ruta')
State.create(name: 'En analisis')
State.create(name: 'Lista para valorizacion')
State.create(name: 'Entregada')
State.create(name: 'Cancelada')

StreetLocation.create(name: 'Principal', value: 1)
StreetLocation.create(name: 'Secundaria', value: 2)
StreetLocation.create(name: 'Interior', value: 3)

Structure.create(name: 'Albañileria', value: 1)
Structure.create(name: 'Armada', value: 2)
Structure.create(name: 'Reforzada', value: 3)
Structure.create(name: 'Hormmigon', value: 4)
Structure.create(name: 'Adobe', value: 5)
Structure.create(name: 'Ladrillo', value: 6)
Structure.create(name: 'Madera', value: 7)
Structure.create(name: 'Mansarda', value: 8)
Structure.create(name: 'Metalica', value: 9)
Structure.create(name: 'Otro', value: 10)

ToiletArtifact.create(name: 'Nacionales', value: 1)
ToiletArtifact.create(name: 'Importados', value: 2)
ToiletArtifact.create(name: 'Templado', value: 3)
ToiletArtifact.create(name: 'Bidet', value: 4)
ToiletArtifact.create(name: 'WC', value: 5)
ToiletArtifact.create(name: 'Lavamanos', value: 6)
ToiletArtifact.create(name: 'Vanitorio', value: 7)
ToiletArtifact.create(name: 'Receptaculo', value: 8)
ToiletArtifact.create(name: 'Tina', value: 9)
ToiletArtifact.create(name: 'Hidromasage', value: 10)

WaterRainDuct.create(name: 'Fierro Galvanizado', value: 1)
WaterRainDuct.create(name: 'PVC', value: 2)
WaterRainDuct.create(name: 'No', value: 3)

Window.create(name: 'Madera', value: 1)
Window.create(name: 'Aluminio', value: 2)
Window.create(name: 'PVC blanco', value: 3)
Window.create(name: 'Termopanel', value: 4)
Window.create(name: 'Palillaje', value: 5)
Window.create(name: 'Metalica', value: 6)
Window.create(name: 'PVC con folio', value: 7)
Window.create(name: 'Otro', value: 8)


5.times do
    first = Region.first
    last = Region.last
    rngRegion = (first.id .. last.id).sort_by{rand}[1]
    city = Faker::Address.city   
    City.create(name: city, region_id: rngRegion)
end

5.times do
    first = City.first
    last = City.last
    rngCity = (first.id .. last.id).sort_by{rand}[1]
    province = Faker::Address.community
    Province.create(name: province, city_id: rngCity)
end

5.times do
street = Faker::Address.street_name
Sector.create(name: street)
end

5.times do |tasacion| #indicar cuantas tasaciones quieres crear
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]

    num_assessment = (1..1000000).sort_by{rand}[1]  

    firstClient = Client.first 
    lastClient = Client.last
    rngClient = (firstClient.id .. lastClient.id).sort_by{rand}[1]
    
    firstOwner = Owner.first
    lastOwner = Owner.last
    rngOwner = (firstOwner.id .. lastOwner.id).sort_by{rand}[1]

    rngDebt = (0..1000000).sort_by{rand}[1]  
    rng3 = (1..3).sort_by{rand}[1]
    rng6 = (1..3).sort_by{rand}[1]
    rng10 = (1..10).sort_by{rand}[1]    
    rngAnti = (1..100).sort_by{rand}[1]
    rngBlock = (1..999).sort_by{rand}[1]
    rngPredial = (1..999).sort_by{rand}[1]

    firstProvince = Province.first
    lastProvince = Province.last
    rngProvince = (firstProvince.id .. lastProvince.id).sort_by{rand}[1]
    
    firstSector = Sector.first
    lastSector = Sector.last
    rngStreet = (firstSector.id .. lastSector.id).sort_by{rand}[1]
    rngDistance = (1..40).sort_by{rand}[1]
    rngWidth = (1..30).sort_by{rand}[1]
    rngVolumen = (1..1000).sort_by{rand}[1]
    rngM2 = (1..100).sort_by{rand}[1]
    rngExpro = [true, false].sample
    rngSill = [true, false].sample
    rngFacil = [true, false].sample
    rngHeat = [true, false].sample
    hasStair = [true, false].sample
    hasPool = [true, false].sample
    hasProtection = [true, false].sample
    hasServiceYard = [true, false].sample
    hasElectricity = [true, false].sample
    address = Faker::Address.full_address
    habitant = Faker::Name.name
    state = State.find_by(name: 'Entregada')

    Assessment.create(number_assesment: num_assessment, state_id: state.id, location: address, inhabited: false , habitant: habitant, client_id: rngClient, owner_id: rngOwner, start_date: 5.days.ago, end_date:1.days.ago)
    assesment = Assessment.last
    Property.create(debt_taxation: rngDebt, antiquity: rngAnti, expropriation: true, sill: true ,assessment_id: assesment.id, facilities: true)
    property = Property.last

    firstBet = BetweenFloorSlap.first
    lastBet = BetweenFloorSlap.last
    rngBetween = (firstBet.id .. lastBet.id).sort_by{rand}[1]

    firstCloset = Closet.first
    lastCloset = Closet.last
    rngCloset1 = (firstCloset.id .. lastCloset.id).sort_by{rand}[1]
    rngCloset2 = (firstCloset.id .. lastCloset.id).sort_by{rand}[1]

    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]

    PropertyBetweenFloorSlap.create(between_floor_slap_id: rngBetween, property_id: property.id, quality_id: rngQuality1)  

    PropertyCloset.create(closet_id: rngCloset1, property_id: property.id, qualities_id: rngQuality1)
    PropertyCloset.create(closet_id: rngCloset2, property_id: property.id, qualities_id: rngQuality2)
    
    rng10.times do
        firstQuality = Quality.first
        lastQuality = Quality.last
        rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstCover = Cover.first
        lastCover = Cover.last
        rngCover = (firstCover.id .. lastCover.id).sort_by{rand}[1]
        PropertyCover.create(observations: 'hola', property_id: property.id, cover_id: rngCover, quality_id: rngQuality1)
    end    

    rng6.times do
        firstQuality = Quality.first
        lastQuality = Quality.last
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstDoor = Door.first
        lastDoor = Door.last
        rngDoor = (firstDoor.id .. lastDoor.id).sort_by{rand}[1]

        firstFrame = DoorFrame.first
        lastFrame = DoorFrame.last
        rngFrame = (firstFrame.id .. lastFrame.id).sort_by{rand}[1]
        PropertyDoor.create(door_id: rngDoor, door_frame_id: rngFrame, property_id: property.id, quality_id: rngQuality1)
    end
    
    firstDrinking = DrinkingWater.first
    lastDrinking = DrinkingWater.last
    rngDrinking = (firstDrinking.id .. lastDrinking.id).sort_by{rand}[1]
    PropertyDrinkingWater.create(drinking_water_id: rngDrinking, property_id: property.id, quality_id: rngQuality1)

    firstDry = DryWall.first
    lastDry = DryWall.last
    rngDry = (firstDry.id .. lastDry.id).sort_by{rand}[1]
    PropertyDryWall.create(dry_wall_id: rngDry, property_id: property.id, other:'', quality_id: rngQuality1)

    if  hasElectricity == true
        rng34 = (3 .. 4).sort_by{rand}[1]
        electSi = Electricity.find_by(name: 'Si')
        PropertyElectricity.create(electricity_id: electSi.id, property_id: property.id)
        PropertyElectricity.create(electricity_id: rng34, property_id: property.id)
    elsif hasElectricity == false
        electNo = Electricity.find_by(name: 'No')
        PropertyElectricity.create(electricity_id: electNo, property_id: property.id)
    end

    firstEnlar = EnlargementsQuality.first
    lastEnlar = EnlargementsQuality.last
    rngEnlar = (firstEnlar.id .. lastEnlar.id).sort_by{rand}[1]

    PropertyEnlarQuality.create(enlargements_quality_id: rngEnlar, property_id: property.id)

    
    firstExterClos = ExteriorClosure.first
    lastExterClos = ExteriorClosure.last
    rngEnlar = (firstExterClos.id .. lastExterClos.id).sort_by{rand}[1]
    PropertyExteriorClosure.create(other: '',property_id: property.id, exterior_closure_id: rngEnlar, quality_id: rngQuality1)
    
    2.times do
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstExternal = ExternalTermination.first
        lastExternal = ExternalTermination.last
        rngExternal = (firstExternal.id .. lastExternal.id).sort_by{rand}[1]
        PropertyExternTermination.create(property_id: property.id, external_termination_id: rngExternal, quality_id: rngQuality1)
    end    

    rng3.times do
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstFurniture = Furniture.first
        lastFurniture = Furniture.last
        rngFurniture = (firstFurniture.id .. lastFurniture.id).sort_by{rand}[1]
        firstForniCover = FurnitureCover.first
        lastFurniCover = FurnitureCover.last
        rngForniCover = (firstForniCover.id .. lastFurniCover.id).sort_by{rand}[1]

        PropertyFurniture.create(furniture_id: rngFurniture, property_id: property.id, furniture_cover_id: rngForniCover, quality_id: rngQuality1)
    end
    

    firstGas = Ga.first
    lastGas = Ga.last
    rngGas = (firstGas.id .. lastGas.id).sort_by{rand}[1]
    PropertyGa.create(property_id: property.id, gas_id: rngGas.to_i, quality_id: rngQuality1)
        
    if rngHeat == true
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstHeating = Heating.first
        lastHeating = Heating.last
        rngHeating = (firstHeating.id .. lastHeating.id).sort_by{rand}[1]
        PropertyHeating.create(heating_id: rngHeating, property_id: property.id, quality_id: rngQuality1)
    end

    firstHousing = HousingQuality.first
    lastHousing = HousingQuality.last
    rngHousing = (firstHousing.id .. lastHousing.id).sort_by{rand}[1]
    PropertyHousingQuality.create(housing_quality_id: rngHousing, property_id: property.id)

    firstInteriorClos = InteriorClosure.first
    lastInteriorClos = InteriorClosure.last
    rngInteriorClos = (firstInteriorClos.id .. lastInteriorClos.id).sort_by{rand}[1]

    PropertyInteriorClosure.create(other: '',property_id: property.id, interior_closure_id: rngInteriorClos)
    
    firstLandShape = LandShape.first
    lastLandShape = LandShape.last
    rngLandShape = (firstLandShape.id .. lastLandShape.id).sort_by{rand}[1]

    PropertyLandShape.create(property_id: property.id, land_shape_id: rngLandShape, quality_id: rngQuality1)

    firstMaintenance = Maintenance.first
    lastMaintenance = Maintenance.last
    rngMaintenance = (firstMaintenance.id .. lastMaintenance.id).sort_by{rand}[1]

    PropertyMaintenance.create(maintenance_id: rngMaintenance, property_id: property.id, quality_id: rngQuality1)

    firstPavement = Pavement.first
    lastPAvement = Pavement.last
    rngPavement = (firstPavement.id .. lastPAvement.id).sort_by{rand}[1]

    PropertyPavement.create(pavement_id: rngPavement, property_id: property.id, quality_id: rngQuality1)

    propertyTipe = PropertyType.find_by(name: 'Vivienda')

    PropertyPropertyType.create(property_type_id: propertyTipe.id, property_id: property.id)

    firstRoad = Road.first
    lastRoad = Road.last
    rngRoad = (firstRoad.id .. lastRoad.id).sort_by{rand}[1]

    PropertyRoad.create(property_id: property.id, road_id: rngRoad)

    PropertyRol.create(block: rngBlock, predial: rngPredial, province_id: rngProvince, property_id: property.id)
    
    firstRoofing = Roofing.first
    lastRoofing = Roofing.last    
    rngRoofing = (firstRoofing.id .. lastRoofing.id).sort_by{rand}[1]

    PropertyRoofing.create(property_id: property.id, roofing_id: rngRoofing, quality_id: rngQuality1)

    firstSectorChar = SectorCharacteristic.first
    lastSectorChar = SectorCharacteristic.last
    rngSecChar = (firstSectorChar.id .. lastSectorChar.id).sort_by{rand}[1]

    PropertySecCharacteristic.create(property_id: property.id,  sector_characteristic_id: rngSecChar)
    PropertySector.create(distance: rngDistance, property_id: property.id, sector_id: rngStreet)

    firstSewerage = Sewerage.first
    lastSewerage = Sewerage.last
    rngSewerage = (firstSewerage.id .. lastSewerage.id).sort_by{rand}[1]

    PropertySewerage.create(sewerage_id: rngSewerage, property_id: property.id, quality_id: rngQuality1)

    firstShedMate = ShedMaterial.first
    lastShedMate = ShedMaterial.last
    rngShedMaterial = (firstShedMate.id .. lastShedMate.id).sort_by{rand}[1]

    shed1= Shed.find_by(name: 'Estructura') 
    shed2= Shed.find_by(name: 'Cercha')
    PropertyShed.create(shed_id: shed1.id, property_id: property.id, shed_material_id: rngShedMaterial, quality_id: rngQuality1)
    PropertyShed.create(shed_id: shed2.id, property_id: property.id, shed_material_id: rngShedMaterial, quality_id: rngQuality2)

    firstSidewalk = SideWalk.first
    lastSidewalk = SideWalk.last
    rngSidewalk = (firstSidewalk.id .. lastSidewalk.id).sort_by{rand}[1]

    PropertySidewalk.create(side_walk_id: rngSidewalk, property_id: property.id, width: rngWidth)

    if hasStair == true
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstStair = Stair.first
        lastStair = Stair.last
        rngStair = (firstStair.id .. lastStair.id).sort_by{rand}[1]

        PropertyStair.create(property_id: property.id, stair_id: rngStair, quality_id: rngQuality1)
    end

    firstStreetLoca = StreetLocation.first
    lastStreetLoca = StreetLocation.last
    rngStreetLoca = (firstStreetLoca.id .. lastStreetLoca.id).sort_by{rand}[1]

    PropertyStreetLocation.create(property_id: property.id, street_location_id: rngStreetLoca)

    firstStructure = Structure.first
    lastStructure = Structure.last
    rngStructure = (firstStructure.id .. lastStructure.id).sort_by{rand}[1]

    PropertyStructure.create(observations: 'hola', property_id: property.id, structure_id: rngStructure, quality_id: rngQuality1)

    rng10.times do
    firstQuality = Quality.first
    lastQuality = Quality.last
    rngQuality1 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
    rngQuality2 = (firstQuality.id .. lastQuality.id).sort_by{rand}[1]
        firstToiletAr = ToiletArtifact.first
        lastToiletAr = ToiletArtifact.last
        rngToiletAr = (firstToiletAr.id .. lastToiletAr.id).sort_by{rand}[1]

        PropertyToiletArtifact.create(property_id: property.id, toilet_artifact_id: rngToiletAr, quality_id: rngQuality1)
    end

    firstRainDuct = WaterRainDuct.first
    lastRainDuct = WaterRainDuct.last
    rngRainDuct = (firstRainDuct.id .. lastRainDuct.id).sort_by{rand}[1]
    PropertyWaterRainDuct.create(property_id: property.id, water_rain_duct_id: rngRainDuct, quality_id: rngQuality1)

    firstWindow = Window.first
    lastWindow = Window.last
    rngWindow = (firstWindow.id .. lastWindow.id).sort_by{rand}[1]
    PropertyWindow.create(window_id: rngWindow, property_id: property.id, other: '', protections: hasProtection, quality_id: rngQuality1)

    if hasPool == true
        Pool.create(img: 'img',volumen: rngVolumen, property_id: property.id)     
    end
    if hasServiceYard == true
        ServiceYard.create(img: 'img', mts2: rngM2, property_id: property.id)
    end
end
