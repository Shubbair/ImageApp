import Head from 'next/head'
import Image from 'next/image'
import Navbar from '../components/Navbar'
import Footer from '../components/Footer'
import styles from '../styles/Home.module.css'

export default function Home() {
  return (
    <>
    <div>
      <h1 className={styles.title}>Hello Deathless!</h1>
      <p className={styles.text}>What Deathless ! any one die !! correct but technology not.</p>
    </div>
    </>
  )
}
