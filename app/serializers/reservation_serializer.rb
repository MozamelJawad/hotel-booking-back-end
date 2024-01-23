class ReservationSerializer
  include JSONAPI::Serializer
  attributes :id, :date, :city
  attribute :room do |reservation|
    reservation.room
  end
  attribute :user do |reservation|
    {
      username: reservation.user.username,
      email: reservation.user.email
    }
  end
end
