
enum TaskStatus {
    case completed
    case pending
}

struct TaskItem {
    var title: String
    var status: TaskStatus
    var description: String
    var day:String
    var time :String
}

class ToDoList {
    var todoTitle = ""
    var mytodolist = [TaskItem]()

    func addmytodo(mytodo: TaskItem){
        mytodolist.append(mytodo)
        
    }
    func readAll() {
        for item in self.mytodolist {
            print("Task Title: \(item.title), status: \(item.status)")
            
        }
    }
    
    func update(index:Int,change :TaskItem){
    mytodolist[index] = change
        print("updated")
    }
    
    func remove(indx:Int){
        mytodolist.remove(at:indx)
        print("removed")

    }
}


var hayaList = ToDoList()
hayaList.addmytodo(mytodo: TaskItem(title: "FamilyDay", status: .completed, description: "dinner", day: "Friday", time: "9:00 PM"))

var hayaTask1 = TaskItem(title: "project", status: .pending, description: "projectSumission", day: "Thrusday", time: "11:00 AM")
var hayaTask2 = TaskItem(title: "visit", status: .pending, description: "Campus", day: "Saturday", time: "6:00 PM")
var hayaTask3 = TaskItem(title: "course", status: .pending, description: "Language Course", day: "Friday", time: "5:30 PM")


hayaList.remove(indx: 0)
hayaList.addmytodo(mytodo: hayaTask1)
hayaList.addmytodo(mytodo: hayaTask2)
hayaList.update(index: 0, change: hayaTask2)
hayaList.remove(indx: 1)

hayaList.readAll()










