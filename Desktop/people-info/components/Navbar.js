import Link from 'next/link'

const Navbar = () => {
    return ( 
        <nav>
            <div className="logo">
                <h1>Frankestain Bot</h1>
            </div>
          <Link href="/"> 
             <a>Home</a>
          </Link>
          <Link href="/about"> 
             <a>About</a>
          </Link>
          <Link href="/Franki"> 
             <a>Franki</a>
          </Link>
        </nav>
     );
}
 
export default Navbar;