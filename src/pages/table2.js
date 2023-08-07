import React, { useEffect, useState } from "react";
import axios from "axios";

const config = {
    headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET,PUT,POST,DELETE,PATCH,OPTIONS"
    }
};

export default function Table2() {

    const [tablesData, setTableData] = useState({
        dataSet: []
    })
    useEffect(() => {
        var url = ''
        url = 'http://localhost:80/api/tables/movie_genre'

        axios.get(url, config).then((res) => {
            setTableData({
                dataSet: Object.values(res.data)
            })
        });
    }, []);

    return (
        <div className="App">
            <h3 style={{fontFamily: "verdana"}}>This table shows movie_id, genre_id, and genre_name. This was done by joining the movie and genre tables.</h3>
            <table>
                <tr>
                    <th>movie_id</th>
                    <th>genre_id</th>
                    <th>genre_name</th>
                </tr>
                {tablesData.dataSet.map((val, key) => {
                    return (
                        <tr key={key}>
                            <td>{val.movie_id}</td>
                            <td>{val.genre_id}</td>
                            <td>{val.genre_name}</td>
                        </tr>
                    )
                })}
            </table>
        </div>

    )
}