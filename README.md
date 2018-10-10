# SecretDiary

The project to attempt after our workshop was the following: 

              SecretDiary
                - lock
                - unlock
                - add_entry
                - get_entries

              Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

              When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

              When the user calls `lock` again they throw errors again.
              
I was able to work through until the end step of :
          
              When the user calls `lock` again they throw errors again.
             
At the moment the project is all under the main class of Diary. With further time , the next step of the project would be to create a new class Lock, which would have the methods lock and unlock in. This way the only methods in the class Diary would be the add_entry and get_entries methods. 
