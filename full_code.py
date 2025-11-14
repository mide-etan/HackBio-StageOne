def ham_dist(dna1, dna2):
    if len(dna1) != len(dna2):
        print("Error: sequences must be of equal length.")
        return  # stops the function 

    dist = 0
    for i in range(len(dna1)):
        if dna1[i] != dna2[i]:
            dist += 1
    
    return dist

slack_username =   "Olamideetan"
twitter_username = "Awomideetan"

print(ham_dist(slack_username, twitter_username))
