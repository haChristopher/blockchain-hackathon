import { Component,HostListener, OnInit } from '@angular/core';
import {Router} from "@angular/router";

export enum KEY_CODE {
  RIGHT_ARROW = 39,
  LEFT_ARROW = 37
}

@Component({
  selector: 'app-page-one',
  templateUrl: './page-one.component.html',
  styleUrls: ['./page-one.component.css']
})
export class PageOneComponent implements OnInit {
  constructor(private router: Router) {}

  ngOnInit() {
  }

  @HostListener('window:keyup', ['$event'])
  keyEvent(event: KeyboardEvent) {
    console.log(event);

    if (event.keyCode === KEY_CODE.LEFT_ARROW) {
      this.router.navigate(['start']);
    }

    if (event.keyCode === KEY_CODE.RIGHT_ARROW) {
      this.router.navigate(['pagetwo']);
    }
  }

}
