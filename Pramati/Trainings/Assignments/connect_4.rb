def gameboard (board)
	puts " 0 1 2 3 4 5 6"
	for i in 0..5
		print "|"
		for j in board[i]
			if j == 0
				print " |"
			elsif j == 1
				print "X|"
			else
				print "O|"
			end
		end
		puts
	end
end

board = [[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0]]

def is_valid (board,player,move)
	move = move.to_i
	for i in 5.downto(0)
		if board[i][move] == 0
			board[i][move] = player
			return true
		end
	end
	return false
end

def iswon (board,player) 
	#checking horizontal 
	for a in 0..5
			for b in 0..3
			if  board[a][b] == player && board[a][b+1] == player && board[a][b+2] == player && board[a][b+3] == player
				return true
			end
		end
	end
	#checking vertical
	for c in 0..2
		for d in 0..6
			if board[c][d] == player && board[c+1][d] == player && board[c+2][d] == player && board[c+3][d] == player
				return true
			end
		end
	end
	#checking right downward diagonal
	for e in  0..2
		for f in 0..3
			if board[e][f] == player && board[e+1][f+1] == player && board[e+2][f+2] == player && board[e+3][f+3] == player
				return true
			end
		end
	end
	#checking left downward diagonal
	for g in 0..2
		for h in 3..6     
			if board[g][h] == player && board[g+1][h-1] == player && board[g+2][h-2] == player && board[g+3][h-3] == player 
				return true
			end
		end
	end
	return false
end


puts "Connect Four "
while true
	for i in 1..2
		gameboard(board)
		puts "Player #{i} turn: Pick a column-"
		temp = gets.chomp
		while temp != temp.to_i.to_s || temp.to_i < 0 || temp.to_i > 6
			puts "invalid move- Please pick a number(0-6)"
			temp = gets.chomp
		end
		while !is_valid?(board,i,temp)
			puts "invalid move- Please pick another column"
			temp = gets.chomp
			while temp != temp.to_i.to_s || temp.to_i < 0 || temp.to_i > 6
				puts "invalid move- Please pick a number(0-6)"
				temp = gets.chomp
			end
		end
		if iswon(board,i) 
			break
		end
	end
	temp_sum = 0
	for j in 0..5
		for k in 0..6 
			if board[j][k] == 0
				temp_sum += 1
			end
		end
	end
	if temp_sum == 0
		break
	end
	if iswon(board,1) 
		break
	end
	if iswon(board,2) 
		break
	end
end
gameboard (board)
if iswon(board,1) 
	puts "Player 1 Wins!"
elsif iswon(board,2) 
	puts "Player 2 Wins!"
	else
	puts "Draw!"
end



