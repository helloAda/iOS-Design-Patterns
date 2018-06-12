在这里记录一下设计模式。
学习内容全部来源于[这里](https://github.com/YouXianMing/iOS-Design-Patterns) 

# 设计模式

### 设计模式的基本原则
- 单一职责原则(就一个类而言，应该仅有一个引起它变化的原因。)
- 开闭原则(模块对扩展开放，对修改关闭)
- 里氏代换原则(父类和子类之间可以相互替换，父类尽量提供了完善的抽象的接口，供子类重载使用)
- 依赖倒转原则 (抽象不依赖于细节，细节依赖于抽象)
- 接口隔离原则(尽量确保接口只做必要的事情)
- 迪米特法则(如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用，解耦合)
- 合成/聚合复用(尽量使用合成/聚合，尽量不要使用类继承)

##### 更具体的说明与示例代码都在Demo里面。


### 目前Demo中已经完成的设计模式

- `适配器模式`(将一个类的接口转换成客户希望的另外一个接口。适配器模式使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。)
- `简单工厂模式`(一个类无法预期生成哪个类，想让其子类来指定所生成具体对象)
- `抽象工厂模式`(提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类)
