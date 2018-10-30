class AssessmentController < ApplicationController
  def TandR
	@temperature = Temperature.all
	@temperature_timestamps = []
	@temperature_values = []
	@temperature.each do |temperature|
		@temperature_timestamps << temperature.timestamp
		@temperature_values << temperature.value
	end
	@rainfall = Rainfall.all
	@rainfall_values = []
	@rainfall.each do |rainfall|
		@rainfall_values << rainfall.value
	end
end
  def locations
	@harelaw = Harelaw.all
	@harelaw_timestamps = []
	@harelaw_values = []
	@harelaw.each do |harelaw|
		@harelaw_timestamps << harelaw.timestamp
		@harelaw_values << harelaw.value
	end
	@dalmarnock = Dalmarnock.all
	@dalmarnock_values = []
	@dalmarnock.each do |dalmarnock|
		@dalmarnock_values << dalmarnock.value
	end
	@allanfearn = Allanfearn.all
	@allanfearn_values = []
	@allanfearn.each do |allanfearn|
		@allanfearn_values << allanfearn.value
	end
    end
end
