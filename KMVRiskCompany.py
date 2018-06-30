# -*- coding: utf-8 -*-
"""
Created on Sat Jun 30 11:39:51 2018

@author: Alpha
"""
'''
功能：
    1、KMV模型估计上市公司破产风险
    2、asumme that Va = x * E
    3、reference:
        http://www.dataguru.cn/article-2616-1.html,
        http://www.docin.com/p-1022600856.html    
'''

from scipy.optimize import root,fsolve
import scipy.stats as ss
import numpy as np
from matplotlib import pyplot as plt

normcdf = ss.norm(0,1).cdf

def CalEquity():
    '''
    compute Equity market value and volatility of Equity market value
    based on price value and equity value
    '''
    
    return [E,EquityTheta]


def KMVfun(x,EtoD,r,t,EquityTheta):
    '''
    KMV model,nolinear equations,solved by SovleKMV function
    '''
    d1 = ( np.log(x[0]*EtoD) + (r + 0.5*x[1]**2)*t)/(x[1]*np.sqrt(t))
    d2 = d1 - x[1] * np.sqrt(t)
    return  np.array([x[0]*normcdf(d1) - np.exp(-r*t)*normcdf(d2)/EtoD - 1,normcdf(d1)*x[0] * x[1] - EquityTheta])

def SolveKMV(E,D,r,t,EquityTheta):
    '''
    Solve KMV model(nolinear equations) and get Va and Sigma_A
    '''
    EtoD = E/D  # asumme that Va = x * E
    result = root(KMVfun, [2,2], args=(EtoD,rf,t,EquityTheta))    
    Va = result.x[0] * E
    AssetTheta = result.x[1]
    
    return [Va,AssetTheta]
    

def DistDeafult():
    '''
    compute distance deafult and probability of default
    '''
    
    
    return [DD,EDF]


if __name__ == "__main__":
    D = 1499800729.147
    E = 172330000
    EquityTheta = 0.6197
    rf = 0.0425
    t = 1
    EtoD = E/D
    result = root(KMVfun, [2,2], args=(EtoD,rf,t,EquityTheta))    
#    Va = 1.6072e+09
#    AssetTheta = 0.070070795977895
#    x = [9.326369878567993 ,AssetTheta]
