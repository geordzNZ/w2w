//import { PrismaClient } from '@prisma/client'

const { PrismaClient } = require('@prisma/client')
console.log('Hello 4')

const prisma = new PrismaClient()

// export async function getLookupData() {
//     const allLookups = await prisma.lookup.findMany()
//     console.log('Hello 5')
//     console.log(allLookups.length)

//     console.log(allLookups)
//     return allLookups
// }

const  allLookups = await prisma.lookup.findMany()


// main()
//   .then(async () => {
//     await prisma.$disconnect()
//   })
//   .catch(async (e) => {
//     console.error(e)
//     await prisma.$disconnect()
//     process.exit(1)
//   })
