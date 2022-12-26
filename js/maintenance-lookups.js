//import '/../css/styles.css'
//import { getLookupData } from "./get-lookups.js"


//const { PrismaClient } = require('@prisma/client')
import { PrismaClient } from '@prisma/client'

console.log('Hello 1')

const prisma = new PrismaClient()
const  allLookups = await prisma.lookup.findMany()

console.log('Hello 2')



async function main() {
    const allLookups = getLookupData()
    console.log('Hello 3')
    console.log(allLookups.length)

    console.log(allLookups)
}


main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })