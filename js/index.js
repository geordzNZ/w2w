//const { PrismaClient } = require('@prisma/client')
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    const allLookups1 = await prisma.lookup.findMany()
    console.log(allLookups1.length, 'lookup values before addition')

    // Create one Lookup
    await prisma.lookup.create({
        data:   {
            TableName: 'Show',
            FieldName: 'Provider',
            LookupEntry: 'DVD/BluRay',
            LookupValue: 'Disc',
            LookupOrder: 8,
            CreatedDateTime: new Date(),
          },
    })
    
    const allLookups2 = await prisma.lookup.findMany()
    console.log(allLookups2.length, 'lookup values after addition')

    await prisma.lookup.deleteMany({
        where: {
            // LookupEntry: {
            //     contains: 'DVD/BluRay',
            // }
            LookupID: {
                gt: 10
            }
        }
    })

    const allLookups3 = await prisma.lookup.findMany()
    console.log(allLookups3.length, 'lookup values after deletion')
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