from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

def aes256_gcm_encrypt(key, plaintext, aad=b""):
    iv = get_random_bytes(12)
    cipher = AES.new(key, AES.MODE_GCM, nonce=iv)
    if aad:
        cipher.update(aad)
    ciphertext, tag = cipher.encrypt_and_digest(plaintext)
    return iv, ciphertext, tag


def aes256_gcm_decrypt(key, iv, ciphertext, tag, aad=b""):
    cipher = AES.new(key, AES.MODE_GCM, nonce=iv)
    if aad:
        cipher.update(aad)
    return cipher.decrypt_and_verify(ciphertext, tag)


def aes256_gcm_encrypt_fixed_iv(key, iv, plaintext, aad=b""):
    cipher = AES.new(key, AES.MODE_GCM, nonce=iv)
    if aad:
        cipher.update(aad)
    ciphertext, tag = cipher.encrypt_and_digest(plaintext)
    return ciphertext, tag


if __name__ == "__main__":

    key = get_random_bytes(32)
    plaintext = b"Example16bytes!!"
    aad = b"header-data"
    iv = get_random_bytes(12)

    print("AES-256-GCM Comparison\n")

    ct1, tag1 = aes256_gcm_encrypt_fixed_iv(key, iv, plaintext, aad)

    cipher_ref = AES.new(key, AES.MODE_GCM, nonce=iv)
    cipher_ref.update(aad)
    ct2, tag2 = cipher_ref.encrypt_and_digest(plaintext)

    print("IV: ", iv.hex())
    print("Ciphertext: ", ct1.hex())
    print("Ciphertext (PyCryptodome): ", ct2.hex())
    print("Tag: ", tag1.hex())
    print("Tag (PyCryptodome): ", tag2.hex())

    print("\nCiphertext match:", ct1 == ct2)
    print("Tag match:", tag1 == tag2)

    cipher_dec = AES.new(key, AES.MODE_GCM, nonce=iv)
    cipher_dec.update(aad)
    pt = cipher_dec.decrypt_and_verify(ct1, tag1)

    print("Decryption successful:", pt == plaintext)
