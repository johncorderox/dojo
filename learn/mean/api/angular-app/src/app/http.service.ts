import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class HttpService {

  constructor(private _http: HttpClient) {
    this.getTasks();
    this.getOneTask();

   }
   getTasks(){
    // our http response is an Observable, store it in a variable
    let tempObservable = this._http.get('/tasks');
    // subscribe to the Observable and provide the code we would like to do with our data from the response
    tempObservable.subscribe(data => console.log("Got our tasks!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", data));
 }
 getOneTask() {

   let tempObservableTask = this._http.get('/tasks/5aa9e63fe4afad3b85657501');

   tempObservableTask.subscribe(data2 => console.log("--------- One task", data2));
 }
}
