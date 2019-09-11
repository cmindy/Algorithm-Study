import java.util.*;

//public class Main {
//    static int[][] a;
//    static int[][] d;
//
//    public static int go(int x, int y) {
//        if (x < 1 || y < 1) {
//            return 0;
//        }
//        if (d[x][y] >= 0) {
//            return d[x][y];
//        }
//        d[x][y] = Math.max(go(x, y-1), go(x-1, y)) + a[x][y];
//        return d[x][y];
//    }
//
//    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//        int n = sc.nextInt();
//        int m = sc.nextInt();
//
//        a = new int[n+1][m+1];
//        d = new int[n+1][m+1];
//        for (int i = 1; i <= n; i++) {
//            for (int j = 1; j <= m; j++) {
//                a[i][j] = sc.nextInt();
//                d[i][j] = -1;
//            }
//        }
//        System.out.println(go(n,m));
//    }
//}


public class Main {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int m = sc.nextInt();
        int[][] a = new int[n+1][m+1];
        int[][] d = new int[n+1][m+1];

        for (int i=1; i<=n; i++) {
            for (int j=1; j<=m; j++) {
                a[i][j] = sc.nextInt();
            }
        }

        for (int i=1; i<=n; i++) {
            for (int j=1; j<=m; j++) {
                d[i][j] = Math.max(d[i-1][j], d[i][j-1]);
                d[i][j] = Math.max(d[i-1][j-1], d[i][j]);
                d[i][j] += a[i][j];
            }
        }
        System.out.println(d[n][m]);
    }
}