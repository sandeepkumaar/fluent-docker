import "@servicenow/sdk/global";

declare global {
    namespace Now {
        namespace Internal {
            interface Keys extends KeysRegistry {
                explicit: {
                        "package_json": {
                            "table": "sys_module",
                            "id": "146a2dade889405e984d7ffa7d703624"
                        }
                    };
            }
        }
    }
}
