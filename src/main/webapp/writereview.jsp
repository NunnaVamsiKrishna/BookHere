<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review </title>

<style>
body{
	margin: 35px;
	font-family: 'Poppins', sans-serif;
}
.flex-container {
    display: flex;
}

.flex-child {
    flex: 1;

}  

.flex-child:first-child {
background-color: #c9c9c9;
} 

a {
  color: #27ae60;
}

a:focus,
a:hover,
a:visited {
  color: #36d278;
}

form {
  margin: 0 auto 3rem;
}

form:first-of-type {
  margin-top: 3rem;
}

fieldset {
  margin: 0 auto;
}

legend {
  margin-bottom: 0.5rem;
}

input[type=radio] {
  border: 3px solid black;
}

.rating {
  display: block;
  position: relative;
  width: 150px;
  min-height: 60px;
  padding: 0;
  border: none;
}

.rating > input {
  position: absolute;
  margin-right: -100%;
  opacity: 0;
}

.rating > input:checked ~ label,
.rating > input:focus ~ label {
  background-position: 0 0;
}

.rating > input:checked + label,
.rating > input:focus + label {
  background-position: 0 -30px;
}

.rating > input:hover ~ label {
  background-position: 0 0;
}

.rating > input:hover + label {
  background-position: 0 -30px;
}

.rating > input:hover + label:before {
  opacity: 1;
}

.rating > input:focus + label {
  outline: 1px dotted #999;
}

.rating .focus-ring {
  position: absolute;
  left: 0;
  width: 100%;
  height: 30px;
  outline: 2px dotted #999;
  pointer-events: none;
  opacity: 0;
}

.rating > .input-no-rate:focus ~ .focus-ring {
  opacity: 1;
}

.rating > label {
  position: relative;
  float: left;
  width: 30px;
  font-size: 0.1em;
  color: transparent;
  cursor: pointer;
  background-repeat: no-repeat;
  background-position: 0 -30px; 
}

.rating > label,
.rating > label:before {
  height: 30px;
  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAA8CAMAAABGivqtAAAAxlBMVEUAAACZmZn2viTHuJ72viOampqampr1viSampr3vySampqdnZ34wiX1vSSampr1vSOZmZmampr1viT2vSOampr2viT2viSampr2viSampr2vyX4vyWbm5v3vSSdnZ32wSadnZ36wCWcnJyZmZn/wSr/2ySampr2vSP2viSZmZn2vSSZmZn2vST2viSampr2viSbm5ubm5uZmZn1vSSampqbm5v2vSWampqampr3vSf5wiT5vyagoKD/xCmkpKT/yCSZmZn1vSO4V2dEAAAAQHRSTlMA+vsG9fO6uqdgRSIi7+3q39XVqZWVgnJyX09HPDw1NTAwKRkYB+jh3L6+srKijY2Ef2lpYllZUU5CKigWFQ4Oneh1twAAAZlJREFUOMuV0mdzAiEQBmDgWq4YTWIvKRqT2Htv8P//VJCTGfYQZnw/3fJ4tyO76KE0m1b2fZu+U/pu4QGlA7N+Up5PIz9d+cmkbSrSNr9seT3GKeNYIyeO5j16S28exY5suK0U/QKmmeCCX6xs22hJLVkitMImxCvEs8EG3SCRCN/ViFPqnq5epIzZ07QJJvkM9Tkz1xnkmXbfSvR7f4H8AtXBkLGj74mMvjM1+VHZpAZ4LM4K/LBWEI9jwP71v1ZEQ6dyvQMf8A/1pmdZnKce/VH1iIsdte4U8VEtY23xOujxtFpWDgKbfjD2YeEhY0OzfjGeLyO/XfnNpAcmcjDwKOXRfU1IyiTRyEkaiz67pb9oJHJb9vVqKfgjLBPyF5Sq9T0KmSUhQmtiQrJGPHVi0DoSabj31G2gW3buHd0pY85lNdcCk8xlNDPXMuSyNiwl+theIb9C7RLIpKvviYy+M6H8qGwSAp6Is19+GP6KxwnggJ/kq6Jht5rnRQA4z9zyRRaXssvyqp5I6Vutv0vkpJaJtnjpz/8B19ytIayazLoAAAAASUVORK5CYII=");
}

.star > label:before {
  content: "";
  position: absolute;
  display: block;
  background-position: 0 30px;
  pointer-events: none;
  opacity: 0;
}

.star > label:nth-of-type(5):before {
  width: 120px;
  left: -120px;
}

.star > label:nth-of-type(4):before {
  width: 90px;
  left: -90px;
}

.star > label:nth-of-type(3):before {
  width: 60px;
  left: -60px;
}

.star > label:nth-of-type(2):before {
  width: 30px;
  left: -30px;
}

.star > label:nth-of-type(1):before {
  width: 0;
  left: 0;
}

@media screen and (-webkit-min-device-pixel-ratio: 2),
  screen and (min-resolution: 192dpi) {
  .star > label {
     background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAB4CAMAAACZ62E6AAABAlBMVEUAAACZmZmampr2vSObm5v/yiufn5+ampr1viP1viSZmZn2viOZmZmampqampr2viSampqampqcnJz5vyScnJz3wSf/wyn/xiujo6Oqqqr/0C/1vSOampr2viP2viOampr2viP2vST2viOampqampqampr1vyP3viSampr2vyT4vyX3viSbm5ubm5v5wCT8xSmgoKCampqampr3vyb2wiWenp72viOampqZmZmampr2viP2viP1viSampqbm5v2vyT3viObm5v4vyadnZ34wSSbm5v2viSZmZn2viP2vST2viP2viT1viOZmZn2viT2viX3viT3vyb2vyOZmZn1vSOZmZlNN+fKAAAAVHRSTlMA9uz4PQwS8O7r5+fTw4yMelw2MB0dFRELBgbS+/Hfu7uxqKWdg4N7ZmZMPi8pKRgPs0w7Nhb14drKw6Gck21tXkNDIyMZ1rDLycTBtaqVknlfV0sGP8ZwAAADW0lEQVRYw9zWvYqDQBSG4TPDoCAqKhYKQgoVLFaIgZCkiCBBUqVazv3fyu4aEXWdM85Uy779A+LP58AfTQgw73AwtxFiZIwbxMbUfuB3H4b49YNfZrbGodoI52+cm9hH9sbZwwAXOFbo2zjDsSzWxnecuuvaM8MpdtbEPs7y9azF5phZWrjERaWOPdpLbB81cICrgv3W4mvMLbU6RmFQeA5u5HhFEEbHLdWLsMxvHJXxW16Goh+ZqPyny1Az5j79SsCJoWHsBNAxQ9sNF26bWFuMC8v1LY+mmeTadjaqtaNnnXoxWBcde1nNWnzdb68xrOqvu22/MTzuPutujpJ122NvluSb8tTWk85CclDZQwLS0oa2TQpEKacsJy0kSJaQOKJxROKKxhWJ7zS+k9ijsUdim8Y2ZWNUFBP4pMKfOv8onX9WrsI5gd3VVLXtatxcuU0znGUHCUAS2DgrS6mT6hTzrXEjfIZj5Dk2xKkihqm4wKlQfQRqalhUP9UHo3FIPAG/Et44JVLsDDf0JHmB3OEByOwZES8hSAsviGjBdh3ylh6plmMnW4IyAUVJWcE/76vTell1EIaiMBwIAcWBA9GC0lIdKFXQQUsHVVCklN7ojf3+z3JOxYqK2TH555+K6CJJQtRbr9XtDmCnjH0AX9Va8J+liIMvDtRsCk2pEs6hKVexR2g7KuDihwt5a9MfprY0fkLXU9ZmFLpoJolN6GXKWWfZx0tHCocwKJSxC22ItYUEjmBUJHFjfYz1xQxlfaLiZsBExq2IPtbkNbLtOwwuGgjTLkH43mYtSzam7+1Bsr3nm5uExBQUozEh9V7N7uvmwZcqdpm0C6vJW63bZEuXtbrV2zpDzhrpYLBWMnY1mjV7JWFtMio7zbWniWFxvHnWm1yGxXmOPXP+L3YV2ysjnNhaZNeMcHPvuL27BMnVMaujljBAYyje4niH4g2ONyh+4PiB4gOODyjWcKxh1gZBNoJjEY4R/BLhF4IDEQ4QPBoEoyxH4+bxrUsHyxwxQlg0WHXqYifVLmo67cKY/UtaXFxBV26TLjuHrkp8BPJTMij1xQejdkgO24nf7dBOCRcbzQuNOR9Qs64GzzrfQa8It2oFAA6Zrga9xEeq1KHmLUHIiCAWInsg1x/MLqkMsItF8QAAAABJRU5ErkJggg==");
  }
}

</style>
</head>
<body>

	<div class="flex-container">

	  <div class="flex-child">
	  <h2 align="center">Review of the Book "<c:out value='${order.bookname}' ></c:out>"</h2>
	  <p style="padding-left: 30px">Price : <c:out value='${order.bookprice}' ></c:out></p>
	    <form action="addreview" method="post" enctype="multipart/form-data">
      <fieldset class="rating">
         <legend>Rate our product:</legend>
         <input type="radio" id="no-rate" class="input-no-rate" name="rating" value="0" checked=""
            aria-label="No rating.">

         <input type="radio" id="rate1" name="rating" value="1">
         <label for="rate1">1 star</label>

         <input type="radio" id="rate2" name="rating" value="2">
         <label for="rate2">2 stars</label>

         <input type="radio" id="rate3" name="rating" value="3">
         <label for="rate3">3 stars</label>

         <input type="radio" id="rate4" name="rating" value="4">
         <label for="rate4">4 stars</label>

         <input type="radio" id="rate5" name="rating" value="5">
         <label for="rate5">5 stars</label>

         <span class="focus-ring"></span>
      </fieldset>
      <table style="padding: 30px;">
      <tr>
      <td><label>Insert Image(if any):   </label></td></tr>
      <tr>
        <td><input type="file" name="reviewimage" required="required"/></td>
      </tr>
      <tr>
      <td><label>Description: </label></td>
      </tr>
      <tr>
      <td>
      <textarea name="description" style="width: 600px ; height: 200px;"></textarea>
      </td>
      </tr>
      <tr>
      <td colspan=2><input type="submit" value="Add" class="button"></td>
      </tr>
      </table>
      <input type="hidden" name="bookid" value="<c:out value='${order.bookid}' ></c:out>" />
      <input type="hidden" name="orderid" value="<c:out value='${order.orderid}' ></c:out>" />
      <input type="hidden" name="customerid" value="<c:out value='${order.customerid}' ></c:out>" />
   </form>
	  </div>
	  
	  <div class="flex-child">
	  <img src="image1?id=<c:out value='${order.bookid}' ></c:out>">
	  </div>
  
	</div>
</body>
</html>