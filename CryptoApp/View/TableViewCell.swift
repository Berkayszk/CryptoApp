//
//  TableViewCell.swift
//  CryptoApp
//
//  Created by Berkay Sazak on 21.10.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

 
    
    let cryptoName: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let cryptoPrice: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func addViews(){
        backgroundColor = UIColor.white
        
        addSubview(cryptoName)
        addSubview(cryptoPrice)
        
        
        cryptoName.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        cryptoName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        cryptoName.heightAnchor.constraint(equalToConstant: 150).isActive = true
        cryptoName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        cryptoPrice.topAnchor.constraint(equalTo: cryptoName.bottomAnchor, constant: 10).isActive = true
        cryptoPrice.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        cryptoPrice.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        cryptoPrice.textAlignment = .center
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
