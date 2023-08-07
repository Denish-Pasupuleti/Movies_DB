import React, { useEffect, useState } from "react";
import axios from "axios";

const config = {
    headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET,PUT,POST,DELETE,PATCH,OPTIONS"
    }
};

export default function Table4() {

    const [tablesData, setTableData] = useState({
        dataSet: []
    })

    useEffect(() => {

        var url = ''

        url = 'http://localhost:80/api/tables/movie_cast'

        axios.get(url, config).then((res) => {
            setTableData({
                dataSet: Object.values(res.data)
            })
        });
    }, []);

    return (

        <div className="App">
            <h3 style={{fontFamily: "verdana"}}>This table shows movie_id, movie_title, person_id, person_name, character_name.</h3>
            <h3 style={{fontFamily: "verdana"}}>This was done by joining the movie, movie_cast, and person tables</h3>
            <table>
                <tr>
                    <th>movie_id</th>
                    <th>movie_title</th>
                    <th>person_id</th>
                    <th>person_name</th>
                    <th>character_name</th>
                </tr>
                {tablesData.dataSet.map((val, key) => {
                    return (
                        <tr key={key}>
                            <td>{val.movie_id}</td>
                            <td>{val.movie_title}</td>
                            <td>{val.person_id}</td>
                            <td>{val.person_name}</td>
                            <td>{val.character_name}</td>
                        </tr>
                    )
                })}
            </table>
        </div>

    )
}