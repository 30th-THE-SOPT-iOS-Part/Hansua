//
//  TableViewPracticeViewController.swift
//  3rd-seminar
//
//  Created by Sua Han on 2022/04/23.
//

import UIKit

class TableViewPracticeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    // 셀 등록
    let nib = UINib(nibName: MusicTableViewCell.identifier, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: MusicTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableViewPracticeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension TableViewPracticeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MusicDataModel.sampleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier, for: indexPath) as? MusicTableViewCell else { return UITableViewCell() }
        
        // 데이터 세팅하는 함수
        cell.setData(MusicDataModel.sampleData[indexPath.row])
        
        return cell
    }
}

