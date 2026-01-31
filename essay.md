**Protein weight calculator Function**

From the table provided in the LMS, I compiled a reference table of the molecular weights of all amino acids and assigned each to its corresponding 1-letter amino acid code. I standardized the input sequence by converting all characters to upper case using the *toupper* function, ensuring the handling of lower-case inputs.  
    
Next, I split the sequence into individual letters so I can iterate through the sequence. Prior to initiating my *for* loop, I first initialize a variable, total\_weight, to cumulate the molecular weight of the proteins   
    
I then created a for loop that evaluates each character in the sequence; if the character matched an entry in the reference table, the corresponding amino acid weight was added to the total; characters not present in the table return 0 for that value. Finally, I converted the total weight value to kilodaltons and returned as the output.  
   
