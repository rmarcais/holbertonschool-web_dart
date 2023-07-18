int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    final scoreA = (teamA['Free throws'] ?? 0) + (teamA['2 pointer'] ?? 0) * 2 + (teamA['3 pointer'] ?? 0) * 3;
    final scoreB = (teamB['Free throws'] ?? 0) + (teamB['2 pointer'] ?? 0) * 2 + (teamB['3 pointer'] ?? 0) * 3;

    if (scoreA > scoreB) {
        return 1;
    } else if (scoreB > scoreA) {
        return 2;
    } else {
        return 0;
    }
}
