import React, { useEffect, useState } from "react";
import axios from "axios";

const config = {
    headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET,PUT,POST,DELETE,PATCH,OPTIONS"
    }
};

export default function Table1() {

    const [tablesData, setTableData] = useState({
        dataSet: []
    })
    useEffect(() => {
        var url = ''

        url = 'http://localhost:80/api/tables/default'

        axios.get(url, config).then((res) => {
            setTableData({
                dataSet: Object.values(res.data)
            })
        });
    }, []);

    return (
        <div className="App">
            <h3 style={{fontFamily: "verdana"}}>This table shows movie_id, lang_id, lang_name. 
            This was done by joining the movie_language and language tables.</h3>
            <table width={800}>
                <tr>
                    <th>movie_id</th>
                    <th>lang_id</th>
                    <th>lang_name</th>
                </tr>
                {tablesData.dataSet.map((val, key) => {
                    return (
                        <tr key={key}>
                            <td>{val.movie_id}</td>
                            <td>{val.lang_id}</td>
                            <td>{val.lang_name}</td>
                        </tr>
                    )
                })}
            </table>
        </div>
    )
}