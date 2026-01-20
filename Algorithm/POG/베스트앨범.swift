//
//  베스트앨범.swift
//  Algorithm
//
//  Created by 이현호 on 1/20/26.
//

import Foundation

// 베스트앨범 - https://school.programmers.co.kr/learn/courses/30/lessons/42579

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var genreTotal: [String: Int] = [:]
    var genreSongs: [String: [(Int, Int)]] = [:]
    
    for i in 0..<genres.count {
        // genreTotal[장르] += plays[i]
        genreTotal[genres[i], default: 0] += plays[i]
        // genreSongs[장르].append((i, plays[i]))
        genreSongs[genres[i], default: []].append((i, plays[i]))
    }
    
    // 장르 순서 정하기 (총 재생 수 높은 순)
    let playSorted = genreTotal.sorted { $0.value > $1.value }
    let genreList = playSorted.map(\.key)
    
    // 각 장르에서 곡 정렬 (재생 수 높은 순, 같으면 인덱스 낮은 순)
    for key in genreSongs.keys {
        genreSongs[key]?.sort {
            if $0.1 == $1.1 {
                return $0.0 < $1.0
            }
            return $0.1 > $1.1
        }
    }
    
    // 장르당 최대 2곡씩 결과에 추가
    var result: [Int] = []
    for genre in genreList {
        if let songs = genreSongs[genre]?.prefix(2) {
            result.append(contentsOf: songs.map(\.0))
        }
    }
    
    return result
}
