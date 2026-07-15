
Test Cases

Module 1 – Permission Management

| Test Case | Test Input    | Expected Output                 | Actual Output                   | Result |
| --------- | ------------- | ------------------------------- | ------------------------------- | ------ |
| TC1       | test.txt, 755 | Permission changed successfully | Permission changed successfully | Pass   |
| TC2       | test.txt, 644 | Permission changed successfully | Permission changed successfully | Pass   |
| TC3       | test.txt, 999 | Failed to change permission     | Failed to change permission     | Pass   |
| TC4       | abc.txt       | File does not exist             | File does not exist             | Pass   |
| TC5       | Empty input   | Error message                   | Error message                   | Pass   |

Module 2 – Ownership Management

| Test Case | Test Input            | Expected Output                | Actual Output                  | Result |
| --------- | --------------------- | ------------------------------ | ------------------------------ | ------ |
| TC1       | test.txt, sowmiyaramu | Ownership changed successfully | Ownership changed successfully | Pass   |
| TC2       | Invalid owner         | Failed to change ownership     | Failed to change ownership     | Pass   |
| TC3       | Invalid file          | File does not exist            | File does not exist            | Pass   |
| TC4       | Empty owner           | Error message                  | Error message                  | Pass   |
| TC5       | Empty file            | Error message                  | Error message                  | Pass   |

Module 3 – Group Management

| Test Case | Test Input                    | Expected Output         | Actual Output           | Result |
| --------- | ----------------------------- | ----------------------- | ----------------------- | ------ |
| TC1       | Existing user, existing group | User added successfully | User added successfully | Pass   |
| TC2       | Invalid user                  | Failed to add user      | Failed to add user      | Pass   |
| TC3       | Invalid group                 | Group does not exist    | Group does not exist    | Pass   |
| TC4       | Empty user                    | Error message           | Error message           | Pass   |
| TC5       | Empty group                   | Error message           | Error message           | Pass   |

Module 4 – Display Umask

| Test Case | Test Input       | Expected Output         | Actual Output   | Result |
| --------- | ---------------- | ----------------------- | --------------- | ------ |
| TC1       | Run option       | Current umask displayed | 0002 displayed  | Pass   |
| TC2       | Run again        | Current umask displayed | 0002 displayed  | Pass   |
| TC3       | Multiple runs    | Same output             | Same output     | Pass   |
| TC4       | Normal execution | No error                | No error        | Pass   |
| TC5       | Press Enter      | Returns to menu         | Returns to menu | Pass   |

Module 5 – User Creation

| Test Case | Test Input         | Expected Output           | Actual Output             | Result |
| --------- | ------------------ | ------------------------- | ------------------------- | ------ |
| TC1       | student1           | User created successfully | User created successfully | Pass   |
| TC2       | Existing user      | User already exists       | User already exists       | Pass   |
| TC3       | Invalid username   | Failed to create user     | Failed to create user     | Pass   |
| TC4       | Empty input        | Error message             | Error message             | Pass   |
| TC5       | Special characters | Failed                    | Failed                    | Pass   |

Module 6 – Group Creation

| Test Case | Test Input         | Expected Output            | Actual Output              | Result |
| --------- | ------------------ | -------------------------- | -------------------------- | ------ |
| TC1       | exam               | Group created successfully | Group created successfully | Pass   |
| TC2       | Existing group     | Group already exists       | Group already exists       | Pass   |
| TC3       | Invalid name       | Failed                     | Failed                     | Pass   |
| TC4       | Empty input        | Error message              | Error message              | Pass   |
| TC5       | Special characters | Failed                     | Failed                     | Pass   |

Module 7 – Process Monitoring

| Test Case | Test Input     | Expected Output             | Actual Output  | Result |
| --------- | -------------- | --------------------------- | -------------- | ------ |
| TC1       | Option 1       | Running processes displayed | Displayed      | Pass   |
| TC2       | Option 2       | Top displayed               | Top displayed  | Pass   |
| TC3       | Invalid option | Invalid choice              | Invalid choice | Pass   |
| TC4       | Press Enter    | Return to menu              | Returned       | Pass   |
| TC5       | Run again      | Process list displayed      | Displayed      | Pass   |

Module 8 – Process Termination

| Test Case | Test Input       | Expected Output    | Actual Output      | Result |
| --------- | ---------------- | ------------------ | ------------------ | ------ |
| TC1       | Valid PID        | Process terminated | Process terminated | Pass   |
| TC2       | Invalid PID      | Invalid PID        | Invalid PID        | Pass   |
| TC3       | Empty PID        | Error              | Error              | Pass   |
| TC4       | Non-existing PID | Process not found  | Process not found  | Pass   |
| TC5       | Run again        | Works correctly    | Works correctly    | Pass   |

Module 9 – Nice/Renice Operations

| Test Case | Test Input            | Expected Output  | Actual Output    | Result |
| --------- | --------------------- | ---------------- | ---------------- | ------ |
| TC1       | Valid PID, priority 5 | Priority changed | Priority changed | Pass   |
| TC2       | Invalid PID           | Error            | Error            | Pass   |
| TC3       | Invalid priority      | Error            | Error            | Pass   |
| TC4       | Empty PID             | Error            | Error            | Pass   |
| TC5       | Empty priority        | Error            | Error            | Pass   |

Module 10 – Background Job Management

| Test Case | Test Input     | Expected Output        | Actual Output          | Result |
| --------- | -------------- | ---------------------- | ---------------------- | ------ |
| TC1       | Option 1       | Background job started | Background job started | Pass   |
| TC2       | Option 2       | Job list displayed     | Job list displayed     | Pass   |
| TC3       | Invalid option | Invalid choice         | Invalid choice         | Pass   |
| TC4       | Multiple jobs  | Jobs displayed         | Jobs displayed         | Pass   |
| TC5       | Press Enter    | Return to menu         | Returned               | Pass   |

