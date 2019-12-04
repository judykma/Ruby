class BankAccount
    att_reader :acct_number, :checking_acct, :saving_acct #outside of the class, you are only able to read NOT write (i.e. him.checking_account = 1000000)
    #attr_write is write only, not read
    #attr_accessor is everying

    @@no_accts = 0  #@@ because this is not something one single bank acct wants to know, but the class does
    def initialize(checking_acct = 0, savings_acct= 0)
        open_account()
        @acct_number
        @checking_acct = checking_acct
        @savings_acct = saving_acct
        @total = (@savings_acct + @checking_acct)
        @@no_accts += 1
    end

    def checking_acct_balance
        puts "Checking Acct Balance: #{@checking_acct}"
    end
    def saving_acct_balance
        puts "Savings Acct Balance: #{@savings_acct}"
    end

    def deposit_checking amt
        @checking_acct += amt
        self
    end
    def deposit_savings amt
        @savings_acct += amt
        self
    end

    def withdraw_checking amt
        if amt < @checking_acct
            @checking_acct -= amt
        else
            puts "ERROR: Insufficient funds in Checking Account."
        end
        self
    end

    # def transfer_to(acct, amt)
    #     if acct == amt < @saving_acct
    #         @saving_acct -= amt
    #         @checking_acct += amt
    #     else
    #         puts "ERROR: Please choose a different amount."
    #     end
    #     self
    # end

    def total_balance
        @total = @checking_acct + @savings_acct
        puts "Total account balance is #{@total}"
        self
    end

    def account_information
        puts "Account Number: #{@acct_number}"
        puts "Checking Acct Balance: #{@checking_acct}"
        puts "Savings Acct acct: " + @savings_acct.to_s
        # total_balance()
		# # puts "Total Balance: #{@total}"
        puts "Interest Rate: #{interest_rate}"
        self
    end

    private
        def open_account
            @acct_number = rand(100...200)
        end
        def interest_rate
            @interest_rate = 0.01
        end
end

him = BankAccount.new   #no starting checking or savings amt declared. Defaults to 0
him.deposit_savings 200
him.withdraw_checking 100
him.account_information

her = BankAccount.new(500,1000)
her.account_information #interest_rate will show because it is inside a function inside the CLASS
her.interest_rate #will not work b/c calling the interest rate directly
her.total_balance

