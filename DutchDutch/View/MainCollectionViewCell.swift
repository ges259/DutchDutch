//
//  MainCollectionViewCell.swift
//  DutchDutch
//
//  Created by 계은성 on 2023/12/25.
//

import UIKit


// MARK: - MainCollectionViewCell

final class MainCollectionViewCell: UICollectionViewCell {
    
    // MARK: - 레이아웃
    
    
    
    
    
    // MARK: - 프로퍼티
    
    
    
    
    // MARK: - 라이프 사이클
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.configureAutoLayout()
        self.configureUI()
        self.configureAction()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
// MARK: - 화면 설정

extension MainCollectionViewCell {
    
    // MARK: - UI 설정
    private func configureUI() {
        self.backgroundColor = UIColor.medium_Blue
        self.clipsToBounds = true
        self.layer.cornerRadius = 12
    }
    
    // MARK: - 오토레이아웃 설정
    private func configureAutoLayout() {
        
    }
    
    // MARK: - 액션 설정
    private func configureAction() {
        
    }
}
