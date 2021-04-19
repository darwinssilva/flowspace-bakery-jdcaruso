class CookiesWorker

	DEFAULT_COOKIE_TIME = 5.minutes

	def self.perform(cookie)
		cookie.created_at < Time.zone.now - DEFAULT_COOKIE_TIME
	end
end
  