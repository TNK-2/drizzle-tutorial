import React from "react";
import { newContextComponents } from "@drizzle/react-components";
const { ContractData, ContractForm } = newContextComponents;
export default ({ drizzle, drizzleState }) => {
  return (
    <div className="App">
      <div className="section">
        <h2>Shipping Test</h2>
        <h3>
          <strong>Shipping Status 1-Shipped 2-Delivered </strong>
          <strong>Ship State: </strong>
          <ContractData
            drizzle={drizzle}
            drizzleState={drizzleState}
            contract="Shipping"
            method="shipstatus"
          />
        </h3>
        <p>
          <strong>Total number of updates: </strong>
          <ContractData
            drizzle={drizzle}
            drizzleState={drizzleState}
            contract="Shipping"
            method="numupdates"
          />
        </p>
        <p>
          <strong>Ship: </strong>
          <ContractForm
            drizzle={drizzle}
            contract="Shipping"
            method="Shipped"
          />
        </p>
        <p>
          <strong>Deliver: </strong>
          <ContractForm
            drizzle={drizzle}
            contract="Shipping"
            method="Delivered"
          />
        </p>
      </div>
    </div>
  );
};