#GC % calculator funtion

gc_calculator <- function(insert_gene) {
  # make everything uppercase
  insert_gene <- toupper(insert_gene)
  #Split the string into single letters
  insert_gene <- strsplit(x = insert_gene, split = "")[[1]]
  #Initialize gc_counter
  gc_counter <- 0
  #iterate through the nucleotide
  for (nuc in insert_gene) {
    #conditional for capturing GC and adding
    if (nuc == 'G' | nuc == 'C') {
      gc_counter <- gc_counter+1
    }
  }
  #return % of GC after addition 
  return ((gc_counter / length(insert_gene)) * 100)
}



# Protein Weight Calculator Function
protein_weight <- function(seq = "OLAMIDE") {
  
  # Creating a table for the weights
  weight <- c(
    A = 89.09, R = 174.20, N = 132.12, D = 133.10, C = 121.15,
    E = 147.13, Q = 146.15, G = 75.07, H = 155.16, I = 131.18,
    L = 131.18, K = 146.19, M = 149.21, F = 165.19, P = 115.13,
    S = 105.09, T = 119.12, W = 204.23, Y = 181.19, V = 117.15
  )
  
  # make everything uppercase
  seq <- toupper(seq)
  
  #Split the sequence into single letters
  seq <- strsplit(seq, "")[[1]]
  # initialize total weight 
  total_weight <- 0
  #For loop to calculate total weight
  for (character in seq) {
    # check for characters in the table, add to the total weight
    if (character %in% names(weight)) {
      total_weight <- total_weight+weight[character]
    } else{
      total_weight <- total_weight+0
    }
      
  } 
  #convert total weight to KiloDalton
  return(total_weight / 1000)
}
