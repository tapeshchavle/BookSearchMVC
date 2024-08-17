/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
let book=document.querySelector("#book");
let btn=document.querySelector("#btn");
let body=document.querySelector("body");
btn.addEventListener("click",()=>{
    let p=document.querySelector("#p1");
    if(book.value!=""){
        let form=document.querySelector("#myForm");
        form.action="/SearchBookMVC/Controller";
    }else{
        
         let form=document.querySelector("#myForm");
         form.action="/SearchBookMVC/remainempty.html";
    }
    
})
