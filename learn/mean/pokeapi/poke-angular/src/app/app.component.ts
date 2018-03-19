
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
tasks = []
constructor(private _httpService: HttpService){
}

ngOnInit(){
  this.getTasksFromService()
}

tasks = [];
getTasksFromService(){
let observable = this._httpService.getTasks()
observable.subscribe(data => {
  // console.log("Got our data!", data)
  // console.log(data[0].description)
this.tasks = data['tasks'];
console.log(data);
});
}
