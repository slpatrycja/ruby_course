class Speaker
	def play(track_name)
		puts "Playing: #{track_name}"
	end
end

class Bluetooth < Speaker
	def play(name)
		puts "Streaming..."
		super
	end
end

class MusicBox < Speaker
	def play
		super("Halo")
	end
end

Bluetooth.new.play('river')
MusicBox.new.play

