import { Component, HostListener} from '@angular/core';
import {Router} from "@angular/router";

declare var window: any;

export enum KEY_CODE {
  RIGHT_ARROW = 39,
  LEFT_ARROW = 37
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})

export class AppComponent {
  constructor(private router: Router) {}

  @HostListener('window:keyup', ['$event'])
  keyEvent(event: KeyboardEvent) {
    console.log(event);

    if (event.keyCode === KEY_CODE.RIGHT_ARROW) {
      this.router.navigate(['pageone']);
    }
  }

}
