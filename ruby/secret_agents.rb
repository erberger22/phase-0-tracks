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
		encrypted_letter = password[index].next
		if encrypted_letter=="aa"
			encrypted_letter="a"
		end
		encrypted_password += encrypted_letter
		index += 1
	end
	#p encrypted_password
end

def decrypt (encrypted_password)
	index=0
	key="abcdefghijklmnopqrstuvwxyz"
	decrypted_password=""
	while index < encrypted_password.length
		letter = encrypted_password[index]
		decrypted_index=key.index(letter)-1
		decrypted_password += key[decrypted_index]
		index += 1
	end
	#p decrypted_password
end

#p decrypt(encrypt("swordfish"))
=begin This nested method worked because it used order of operations to solve for the
encrypt method within the () first and then called the decrypt method on the encrypted 
result of encrypt method 
=end





		