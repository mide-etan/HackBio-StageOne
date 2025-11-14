def ham_dist(dna1, dna2):
    """ 
    This function calculates the Hamming Distance between two strings.
    The Hamming Distance is the number of positions at which the corresponding 
    characters are different. It's often used in bioinformatics for DNA sequences,
    but works for any two strings of equal length.
    """
    # Check for equal length
    if len(dna1) != len(dna2):
        # A fundamental requirement for Hamming Distance is that the sequences 
        # must have the same length.
        print("Error: sequences must be of equal length.")
        return  # stops the function 

    # Initialize distance counter
    dist = 0
    # Iterate and compare characters
    for i in range(len(dna1)):
        if dna1[i] != dna2[i]:
            dist += 1
    
    return dist

slack_username =   "Olamideetan"
twitter_username = "Awomideetan"

print(ham_dist(slack_username, twitter_username))
