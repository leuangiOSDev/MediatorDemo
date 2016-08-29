```cpp
/**
*　　　　　　　　┏┓　　　┏┓+ + 
*　　　　　　　┏┛┻━━━┛┻┓ + + 
*　　　　　　　┃　　　　　　　┃ 　 
*　　　　　　　┃　　　━　　　┃ ++ + + + 
*　　　　　　 ████━████ ┃+ 
*　　　　　　　┃　　　　　　　┃ + 
*　　　　　　　┃　　　┻　　　┃ 
*　　　　　　　┃　　　　　　　┃ + + 
*　　　　　　　┗━┓　　　┏━┛ 
*　　　　　　　　　┃　　　┃　　　　　　　　　　　 
*　　　　　　　　　┃　　　┃ + + + + 
*　　　　　　　　　┃　　　┃　　　　Code is far away from bug with the animal protecting　　　　　　　 
*　　　　　　　　　┃　　　┃ + 　　　　神兽保佑,代码无bug　　 
*　　　　　　　　　┃　　　┃ 
*　　　　　　　　　┃　　　┃　　+　　　　　　　　　 
*　　　　　　　　　┃　 　　┗━━━┓ + + 
*　　　　　　　　　┃ 　　　　　　　┣┓ 
*　　　　　　　　　┃ 　　　　　　　┏┛ 
*　　　　　　　　　┗┓┓┏━┳┓┏┛ + + + + 
*　　　　　　　　　　┃┫┫　┃┫┫ 
*　　　　　　　　　　┗┻┛　┗┻┛+ + + + 
*/


```
# MediatorDemo
中介者模式demo


#uml结构图
![image](https://github.com/leuangiOSDev/MediatorDemo/blob/master/MediatorUML.jpg)

它主要包含如下几个角色：

BaseMediator: 抽象中介者。定义了同事对象到中介者对象之间的接口。

ConcreteMediator: 具体中介者。实现抽象中介者的方法，它需要知道所有的具体同事类，同时需要从具体的同事类那里接收信息，并且向具体的同事类发送信息。

BaseColleague: 抽象同事类。

ColleagueA/ColleagueB: 具体同事类。每个具体同事类都只需要知道自己的行为即可，但是他们都需要认识中介者。

在中介者模式中中介者对象处于核心地位，因为它定义了整个系统中所有具体同事类之间的关系。在整个系统中它主要承担两个方面的责任。

1、 结构上起到中转作用。通过中介者对象对关系的封装，使得具体的同事类不再需要显示的引用其他对象，它只需要通过中介者就可以完成与其他同事类之间的通信。

2、 行为上起到协作作用。中介者对同事类之间的关系进行封装，同事类在不需要知道其他对象的情况下通过中介者与其他对象完成通信。在这个过程中同事类是不需要指明中介者该如何做，中介者可以根据自身的逻辑来进行协调，对同事的请求进一步处理，将同事成员之间的关系行为进行分离和封装。

同时由于中介者对对象的关系进行了封装，使得各个同事类之间的耦合减少了，使得他们可以独立改变和复用。

#优缺点
优点
1、 简化了对象之间的关系，将系统的各个对象之间的相互关系进行封装，将各个同事类解耦，使系统成为松耦合系统。

2、 减少了子类的生成。

3、 可以减少各同事类的设计与实现。

缺点
由于中介者对象封装了系统中对象之间的相互关系，导致其变得非常复杂，使得系统维护比较困难。

#模式适用场景

1、 系统中对象之间存在比较复杂的引用关系，导致他们之间的依赖关系结构混乱而且难以复用该对象。

2、 想通过一个中间类来封装多个类中的行为，而又不想生成太多的子类。

#模式总结

1、 在中介者模式中通过引用中介者对象，将系统中有关的对象所引用的其他对象数目减少到最少。它简化了系统的结构，将系统由负责的网状结构转变成简单的星形结构，中介者对象在这里起到中转和协调作用。

2、 中介者类是中介者模式的核心，它对整个系统进行控制和协调，简化了对象之间的交互，还可以对对象间的交互进行进一步的控制。

3、 通过使用中介者模式，具体的同事类可以独立变化，通过引用中介者可以简化同事类的设计和实现。

4、 就是由于中介者对象需要知道所有的具体同事类，封装具体同事类之间相互关系，导致中介者对象变得非常复杂，系统维护起来较为困难。