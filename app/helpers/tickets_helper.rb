module TicketsHelper
	def display_ticket_status(ticket)
		if ticket.status == "complete"
			"<button class='btn-success'>Complete</button>".html_safe
		elsif ticket.status =="in_progress"
			"<button class='btn-warning'>In Progress</button>".html_safe
		else
			"<button class='btn-info'>Recieved</button>".html_safe
		end
	end
end
