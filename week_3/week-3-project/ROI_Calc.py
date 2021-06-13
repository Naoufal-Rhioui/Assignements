class ROI_Calc():
    
    def __init__(self):
        print("Welcome to ROI Calculator. You will be asked a series of questions in order to get a precise cash on cash ROI")
    
        
    def capital(self):
#         down_payment = int(input("How much your down payment?"))
#         closing_cost = int(input("How much your closing cost?"))
#         rehab_budget = int(input("How much your rehab budget?"))
        capital_invested = 50000 #down_payment + closing_cost + rehab_budget
        #print(f"This is your total cash invested: ${capital_invested}")
        return capital_invested
    
    def income(self):
#         rental = int(input("How much your rental income?"))
#         laundry = int(input("How much do you charge for laundry?"))
#         storage = int(input("How much do you charge for storage?"))
        total_income = 2000 #rental + laundry + storage
        #print(f"This is your total income: ${total_income}")
        return total_income
    
    def expenses(self):
#         tax = int(input("How much is your monthly tax?"))
#         insurance = int(input("How much is your monthly home insurance?"))
#         utilities = int(input("How much do you pay for utilities monthly ?"))
#         HOA = int(input("How much your monthly HOA?"))
#         lawn_snow = int(input("How much do you pay for lawn/snow services monthly?"))
#         vacancy = int(input("How much is your monthly vacancy?"))
#         repairs = int(input("How much is the monthly cost of repairs?"))
#         capex = int(input("How much is your capex?"))
#         property_management = int(input("How much do you pay monthly for your property management?"))
#         mortgage = int(input("How much is your monthly mortgage?"))
        total_expenses = 1610 #tax + insurance + utilities + HOA + lawn_snow + vacancy + repairs + capex + property_management + mortgage
        #print(f"This is your total expenses: ${total_expenses}")
        return total_expenses
    
    
    
    def cash_flow(self):
        monthly_cash_flow = self.income() - self.expenses()
        self.monthly_cash_flow = monthly_cash_flow
        #print(f"Your monthly profit is: {monthly_cash_flow}")
        return monthly_cash_flow
        
    def ROI(self):
        roi = self.cash_flow() *12 / self.capital() * 100
        print(f"This is a summary of your investment\nYour total investement is: ${self.capital()}\nYour total monthly income is: ${ROI_Calc.income(self)}\nYour total monthly expenses is: ${ROI_Calc.expenses(self)}\nYour ROI is: {roi}%")

run = ROI_Calc()
def RunROI():
    run.ROI()
   
RunROI()