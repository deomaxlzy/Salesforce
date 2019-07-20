/**
 * Created by JohnnyLou on 2019/7/20.
 */

import {LightningElement, track} from 'lwc';

export default class myfirstwebcomponent extends LightningElement {
    // @track
    contacts = [
        {
            Id: 1,
            Name: 'Amy Taylor',
            Title: 'VP of Engineering'
        },
        {
            Id: 2,
            Name: 'Michael Jones',
            Title: 'VP of Sales'
        },
        {
            Id: 3,
            Name: 'Jennifer Wu',
            Title: 'CEO'
        },
    ];

}