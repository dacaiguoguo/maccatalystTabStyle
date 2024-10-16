//
//  ViewController.swift
//  maccatalystTabStyle
//
//  Created by yanguo sun on 2024/10/16.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView = UITableView()
    private let cellIdentifier = "DemoCell"
    private let itemCount = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "DemoCell"
        if #available(iOS 17.0, *) {
            traitOverrides.horizontalSizeClass = .compact
        } else {
            // Fallback on earlier versions
        }
        view.backgroundColor = .brown
        setupTableView()
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "Item \(indexPath.row + 1)"
        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected item \(indexPath.row + 1)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

class SecurityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView = UITableView()
    private let cellIdentifier = "DemoCell"
    private let itemCount = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "DemoCell A"
        if #available(iOS 17.0, *) {
            traitOverrides.horizontalSizeClass = .compact
        } else {
            // Fallback on earlier versions
        }
        view.backgroundColor = .brown
        setupTableView()
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "Item A \(indexPath.row + 1)"
        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected item \(indexPath.row + 1)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView = UITableView()
    private let cellIdentifier = "DemoCell"
    private let itemCount = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "DemoCell B"
        if #available(iOS 17.0, *) {
            traitOverrides.horizontalSizeClass = .compact
        } else {
            // Fallback on earlier versions
        }
        view.backgroundColor = .brown
        setupTableView()
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "Item B \(indexPath.row + 1)"
        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected item \(indexPath.row + 1)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension UIColor {
    //     196bec
    
    /// 通过十六进制颜色值创建UIColor对象
    /// - Parameter hex: 十六进制颜色值
    /// - Parameter alpha: 透明度（默认为1.0）
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex >> 16) & 0xFF) / 255.0
        let green = CGFloat((hex >> 8) & 0xFF) / 255.0
        let blue = CGFloat(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

class TabViewController: UITabBarController {

    let visualEffectViewTag = 10234
    let unlockButtonTag = 55274
    
//    lazy var paywallController = HTCallBackPaywallController()

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 18.0, *) {
            mode = .tabBar
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 17.0, *) {
            traitOverrides.horizontalSizeClass = .compact
        } else {
            // Fallback on earlier versions
        } // 👈 Override like this, use `.unspecified` to see all tabs.

        // Add these lines to customize TabBar appearance
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(hex:0xf8f8f8)

        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }

        // 获取环境变量
        if let guideupValue = ProcessInfo.processInfo.environment["SELECTEDINDEX"] {
            self.selectedIndex = Int(guideupValue) ?? 0
        }
        
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = UIColor(hex:0xf8f8f8)

        // Update the attributes
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(hex: 0x5b5a5a),
            .font: UIFont.boldSystemFont(ofSize: 12)
        ]
        
        let attributesSel: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(hex: 0x0d1628),
            .font: UIFont.boldSystemFont(ofSize: 13)
        ]
        
        if let items = self.tabBar.items {
   
            for item in items {
                item.setTitleTextAttributes(attributes, for: .normal)
                item.setTitleTextAttributes(attributesSel, for: .selected)
            }
            
            // 设置 tab bar item 的标题
            items[0].title = "authenticator"
            items[1].title = "security"
            items[2].title = "settings"

            
            // 设置 tab bar item 的图片和选中图片
            items[0].image = UIImage(named: "tab1_unselected")?.withRenderingMode(.alwaysOriginal)
            items[0].selectedImage = UIImage(named: "tab1_selected")?.withRenderingMode(.alwaysOriginal)
            
            items[1].image = UIImage(named: "tab2_unselected")?.withRenderingMode(.alwaysOriginal)
            items[1].selectedImage = UIImage(named: "tab2_selected")?.withRenderingMode(.alwaysOriginal)
            
            items[2].image = UIImage(named: "tab3_unselected")?.withRenderingMode(.alwaysOriginal)
            items[2].selectedImage = UIImage(named: "tab3_selected")?.withRenderingMode(.alwaysOriginal)
            
        }
        
        // 修改这里，确保选中状态的文字颜色正确设置
        self.tabBar.standardAppearance.stackedLayoutAppearance.normal.titleTextAttributes = attributes
        self.tabBar.standardAppearance.stackedLayoutAppearance.selected.titleTextAttributes = attributesSel
        
        // 添加这行代码来确保 iOS 15 及以上版本也应用这些设置
        if #available(iOS 15.0, *) {
            self.tabBar.scrollEdgeAppearance?.stackedLayoutAppearance.normal.titleTextAttributes = attributes
            self.tabBar.scrollEdgeAppearance?.stackedLayoutAppearance.selected.titleTextAttributes = attributesSel
        }
        
        // 确保更新后的外观被应用
        self.tabBar.standardAppearance = self.tabBar.standardAppearance
        if #available(iOS 15.0, *) {
            self.tabBar.scrollEdgeAppearance = self.tabBar.standardAppearance
        }
        
        viewControllers?.forEach({ vc in
            if #available(iOS 17.0, *) {
                vc.traitOverrides.horizontalSizeClass = .compact
            } else {
                // Fallback on earlier versions
            }
        })
        
    }
    
    func addTopBorderToTabBar() {
//        let border = CALayer()
//        let borderWidth: CGFloat = 0.5
//        border.borderColor = UIColor.colorWithHex(hex: 0xDBDBDB).cgColor
//        border.frame = CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: borderWidth)
//        border.borderWidth = borderWidth
//        tabBar.layer.addSublayer(border)
//        tabBar.clipsToBounds = true
//        self.tabBarHeight = 0
    }
    
    func addCallBack() -> Void {
//        if paywallController.view.superview == nil {
//            self.view.addSubview(paywallController.view)
//            paywallController.didMove(toParent: self)
//            paywallController.view.snp.makeConstraints { make in
//                make.edges.equalToSuperview()
//            }
//        }
    }
    func removeCallBack() -> Void {
//        if SubscriptionManager.shared.currentPurchaseSuccess || SubscriptionManager.shared.currentPurchaseRestoreSuccess {
//            paywallController.view.removeFromSuperview()
//            requestATTPermission()
//        }
    }
}
