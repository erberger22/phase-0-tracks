=begin
-encrypt method
	-read imput string
	-index each character
	-add 1 to each indexed character(use next method)
	-save as new encrypted string
	-puts new encrypted string
-decryption method
	-read imput of encrypted string
	-index each character
	-subtract 1 from each indexed character (using alphabet reference string)
	-save as decrypted string
	-puts decrypted string
profit
=end
def encrypt (password)
	index=0
	encrypted_password=""
	while index < password.length
		encrypted_password += password[index].next
		index += 1
	end
	p encrypted_password
end

		