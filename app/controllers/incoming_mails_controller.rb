class IncomingMailsController < ApplicationController
	require 'mail'
	skip_before_filter :verify_authenticity_token
	
	def create
		message = Mail.new(params[:message])
		debugger
		Ticket.create(
			to: message.to, 
			from: message.from.join(","), 
			subject: message.subject,
			message: message.body.decoded
			)
		render text: 'success', status: 200
	end 
end
