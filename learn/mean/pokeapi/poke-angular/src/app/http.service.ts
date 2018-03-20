import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class HttpService {

  constructor(private _http: HttpClient) {

    this.getTasks();
  }
  getTasks(){
      // Remove the lines of code where we make the variable 'tempObservable' and subscribe to it.
      // tempObservable = this._http.get('/tasks');
      // tempObservable.subscribe(data => console.log("Got our tasks!", data));
      // Return the observable to wherever the getTasks method was invoked.
      return this._http.get('/tasks');
  }
  addTask(newtask){
    return this._http.post('/tasks', newtask)
}


}
