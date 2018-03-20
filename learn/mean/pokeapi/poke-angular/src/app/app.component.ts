
import { HttpService } from './http.service';
import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
title = 'Coding Dojo';
tasks = [];
newTask: any;
constructor(private _httpService: HttpService){

}

ngOnInit(){
  this.newTask = { title: "", description: "" }

}

getTasksFromService(){
let observable = this._httpService.getTasks()
observable.subscribe(data => {
  // console.log("Got our data!", data)
  // console.log(data[0].description)
this.tasks = data;

});
}

getTaskId() {

  let test = this._httpservice.getTaskId2()
  test.subscribe(data=> {
    console.log(data);
  });
  }
  onButtonClick(): void {

    this.getTasksFromService();
  }

  onSubmit() {

    let observable = this._httpService.addTask(this.newTask);
    observable.subscribe(data=> {

      this.newTask{title: "", description: ""}
    });


  this.newTask = { title: "", description: "" }
}
}

}
