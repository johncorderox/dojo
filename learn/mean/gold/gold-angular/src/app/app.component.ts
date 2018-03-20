
import { HttpService } from './http.service';
import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {


  gold:     number;




constructor(private _httpService: HttpService){

}

  ngOnInit(){
    this.gold = 0;

  }
  onButtonClick(): void {
    this.gold += 3;


  }


}
