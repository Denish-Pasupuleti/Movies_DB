import React, { useEffect, useState } from "react";
import axios from "axios";

const config = {
    headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET,PUT,POST,DELETE,PATCH,OPTIONS"
    }
};

export default function Table3() {

    const [tablesData, setTableData] = useState({
        dataSet: []
    })

    useEffect(() => {

        var url = ''

        url = 'http://localhost:80/api/tables/movie_company'

        axios.get(url, config).then((res) => {
            setTableData({
                dataSet: Object.values(res.data)
            })
        });
    }, []);

    return (

        <div className="App">
            <h3 style={{fontFamily: "verdana"}}>This table shows movie_id, genre_id, genre_name, movie_title, company_id, and company name.</h3>
            <h3 style={{fontFamily: "verdana"}}>This was done by joining the movie, movie_genre, movie_company, and production_company tables</h3>
            <table>
                <tr>
                    <th>movie_id</th>
                    <th>genre_id</th>
                    <th>genre_name</th>
                    <th>movie_title</th>
                    <th>company_id</th>
                    <th>company_name</th>
                </tr>
                {tablesData.dataSet.map((val, key) => {
                    return (
                        <tr key={key}>
                            <td>{val.movie_id}</td>
                            <td>{val.genre_id}</td>
                            <td>{val.genre_name}</td>
                            <td>{val.movie_title}</td>
                            <td>{val.company_id}</td>
                            <td>{val.company_name}</td>
                        </tr>
                    )
                })}
            </table>
        </div>

    )
}