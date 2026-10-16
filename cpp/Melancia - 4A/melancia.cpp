#include <bits/stdc++.h>
using namespace std;
 
int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
 
    // Inicio
    int w;
    if (cin >> w) {
        if ((w & 2) == 0 && w > 2) {
            cout << "YES\n";
        } else {
            cout << "NO\n";
        }
        
    }
    // Fim
    return 0;
}