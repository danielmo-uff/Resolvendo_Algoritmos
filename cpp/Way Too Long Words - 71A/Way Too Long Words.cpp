#include <bits/stdc++.h>
using namespace std;
 
int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    
    int n;
    int t;
    string s;
    cin >> n;
    for (int i = 0; i < n; i++){
        cin >> s;
        t = s.length(); 
        if (t > 10){
            cout << s[0] << t-2 << s[t-1] << "\n";
        } else {
        cout << s << "\n";
        } 
    }
    
 
    return 0;
}
