//
//  WeatherCell.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/26/24.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        
        self.temperatureLabel.text = "\(vm.temperature.formatAsDegree())"
    }

}
