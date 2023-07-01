<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="../error.html"
    import="pxu.edu.baitap1.ProductModel"
    import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! public ArrayList<ProductModel> getProducts(){
	ArrayList<ProductModel> results = new ArrayList();
	results.add(new ProductModel(1,"OKE"));
	results.add(new ProductModel(2,"OKEEEEE"));
	return results;
}
%>
<%ArrayList<ProductModel> dssp = getProducts();
for(ProductModel itr: dssp){
	out.print(itr.getProductID()+";"+itr.getProductName());
}
%>

<html>
<table>
<thead>
<tr>
  <th>ID</th>
  <th>Name</th>
</tr>
</thead>
<tbody>
<%for (ProductModel itr : dssp) { %> 
<tr> 
<td><%out.print(itr.getProductID()); %></td>
 <td> <%out.print(itr.getProductName()); %> </td>
  </tr> <% }//dong vong for%>
<tr>
  <td></td>
  <td></td>
</tr>
<tr>
  <td></td>
  <td></td>
</tr>
</tbody>
</table> 

</body>
</html>