# 💳 Kredi Kartı Dolandırıcılık Tespiti | MATLAB

## 📌 Proje Hakkında

Bu proje, kredi kartı işlemlerinde meydana gelen dolandırıcılık faaliyetlerini makine öğrenmesi yöntemleri kullanarak tespit etmeyi amaçlamaktadır. Çalışmada Kaggle platformunda yayınlanan Credit Card Fraud Detection veri seti kullanılmış ve MATLAB ortamında bir sınıflandırma modeli geliştirilmiştir.

Finans sektöründe dolandırıcılık işlemlerinin erken tespit edilmesi, hem müşteri güvenliğini artırmakta hem de finansal kayıpların önüne geçmektedir. Bu proje kapsamında geliştirilen model, geçmiş işlem verilerinden öğrenerek yeni işlemlerin normal veya dolandırıcılık olup olmadığını tahmin etmektedir.

---

## 🎯 Projenin Amacı

•⁠  ⁠Kredi kartı işlemlerini analiz etmek
•⁠  ⁠Dolandırıcılık işlemlerini tespit etmek
•⁠  ⁠Makine öğrenmesi algoritmalarının performansını değerlendirmek
•⁠  ⁠Finansal güvenlik alanında veri madenciliği uygulaması geliştirmek

---

## 📊 Veri Seti

Bu projede Kaggle üzerinde yayınlanan *Credit Card Fraud Detection Dataset* kullanılmıştır.

### Veri Seti Özellikleri

| Özellik               | Değer     |
| --------------------- | --------- |
| Toplam Kayıt Sayısı   | 284.807   |
| Özellik Sayısı        | 30        |
| Hedef Değişken        | Class     |
| Normal İşlem          | Class = 0 |
| Dolandırıcılık İşlemi | Class = 1 |

Veri setindeki V1-V28 değişkenleri PCA dönüşümü uygulanmış anonimleştirilmiş özelliklerden oluşmaktadır.

---

## 🛠 Kullanılan Teknolojiler

•⁠  ⁠MATLAB
•⁠  ⁠Statistics and Machine Learning Toolbox
•⁠  ⁠Random Forest (Bagged Trees)
•⁠  ⁠Confusion Matrix
•⁠  ⁠ROC Curve Analysis

---

## 📂 Proje Yapısı

⁠ text
project/
│
├── creditcard.csv
├── fraud_detection.m
├── README.md
└── results/
    ├── confusion_matrix.png
    └── roc_curve.png
 ⁠

---

## ⚙️ Model Eğitimi

Projede Random Forest algoritması kullanılmıştır.

### Eğitim Adımları

1.⁠ ⁠Veri setinin yüklenmesi
2.⁠ ⁠Eğitim ve test verilerinin oluşturulması
3.⁠ ⁠Random Forest modelinin eğitilmesi
4.⁠ ⁠Test verileri üzerinde tahmin yapılması
5.⁠ ⁠Performans değerlendirmesi

Veri seti:

•⁠  ⁠%80 Eğitim
•⁠  ⁠%20 Test

olarak bölünmüştür.

---

## 📈 Performans Metrikleri

Model aşağıdaki metrikler kullanılarak değerlendirilmiştir:

•⁠  ⁠Accuracy (Doğruluk)
•⁠  ⁠Precision (Kesinlik)
•⁠  ⁠Recall (Duyarlılık)
•⁠  ⁠F1-Score
•⁠  ⁠ROC Eğrisi
•⁠  ⁠AUC Skoru

---

## 🚀 Projeyi Çalıştırma

### 1. Veri Setini İndirin

Kaggle'dan Credit Card Fraud Detection veri setini indirin.

### 2. Dosyayı Proje Klasörüne Yerleştirin

⁠ text
creditcard.csv
 ⁠

dosyasını proje dizinine ekleyin.

### 3. MATLAB Kodunu Çalıştırın

⁠ matlab
fraud_detection
 ⁠

---

## 📋 Örnek Çıktılar

Program çalıştırıldığında:

•⁠  ⁠Confusion Matrix oluşturulur
•⁠  ⁠Accuracy değeri hesaplanır
•⁠  ⁠Precision değeri hesaplanır
•⁠  ⁠Recall değeri hesaplanır
•⁠  ⁠F1 Score hesaplanır
•⁠  ⁠ROC Eğrisi çizilir

---

## 🔍 Gelecek Çalışmalar

Bu proje aşağıdaki yöntemlerle geliştirilebilir:

•⁠  ⁠XGBoost
•⁠  ⁠LightGBM
•⁠  ⁠Support Vector Machine (SVM)
•⁠  ⁠Yapay Sinir Ağları
•⁠  ⁠SMOTE ile veri dengeleme
•⁠  ⁠Gerçek zamanlı işlem analizi

---

## 👨‍💻 Geliştirici

Emirhan Cimşit

Yazılım Mühendisliği Öğrencisi

İlgi Alanları:

•⁠  ⁠Yapay Zeka
•⁠  ⁠Makine Öğrenmesi
•⁠  ⁠Bilgisayarlı Görü
•⁠  ⁠Doğal Dil İşleme
•⁠  ⁠Veri Bilimi

---

## 📄 Lisans

Bu proje eğitim ve araştırma amaçlı geliştirilmiştir.
