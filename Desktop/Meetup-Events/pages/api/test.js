import dbConnect from '../../utils/DBconnect'

dbConnect();

export default async(req,res)=>{
    res.json({
        test:'Correct'
    })
}

