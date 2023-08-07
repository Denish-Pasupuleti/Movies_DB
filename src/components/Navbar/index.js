import React from "react";
import { Nav, NavLink, NavMenu, NavHeader }
    from "./NavbarElements";

const Navbar = () => {
  return (
    <>
      <NavHeader>461 Project, Spring 2023</NavHeader>
      <Nav>
        <NavMenu>
          <NavLink to="/" activeStyle>
            Home
          </NavLink>
          <NavLink to="/table1" activeStyle>
            Table1
          </NavLink>
          <NavLink to="/table2" activeStyle>
            Table2
          </NavLink>
          <NavLink to="/table3" activeStyle>
            Table3
          </NavLink>
          <NavLink to="/table4" activeStyle>
            Table4
          </NavLink>
          <NavLink to="/schema" activeStyle>
            Schema
          </NavLink>
          <NavLink to="/about" activeStyle>
            About
          </NavLink>
        </NavMenu>
      </Nav>
    </>
  );
};

export default Navbar;
