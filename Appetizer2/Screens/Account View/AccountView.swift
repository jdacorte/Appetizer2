//
//  AccountView.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/23/21.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()

    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                        
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                .navigationTitle("❌ Accounts")
            }
            .alert(item: $viewModel.alertItem){ alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
